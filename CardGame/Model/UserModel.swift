//
//  UserModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 14/07/2024.
//

import Foundation
import CoreData
import Observation

@Observable class UserModel: Identifiable {
     var selectedUser: UserEntity?
    
    let container: NSPersistentContainer
    var savedEntities: [UserEntity] = []
    
    init() {
        self.container = NSPersistentContainer(name: "UsersContainer")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("error loading .\(error)")
            
            }
        }
        fetchUsers()
    }
    
    func addPointToSelectedUser() {
        guard let selectedUser = selectedUser else { return }
        selectedUser.points += 1

           do {
               try container.viewContext.save()
           } catch {
               print("Error saving user: \(error)")
           }
       }
   
    
    
    func fetchUsers() {
        let request = NSFetchRequest<UserEntity>(entityName: "UserEntity")
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("error fetching \(error)")
        }
       
    }
    func addUser(text:String, number:Int16) {
        let newUser = UserEntity(context: container.viewContext)
        newUser.name = text
        newUser.points = number
        saveData()
    }
    func saveData() {
        do {
           try container.viewContext.save()
            fetchUsers()
        } catch let error {
            print("error saving .\(error)")
        }
    }
 
    func delete(indexSet: IndexSet) {
        guard  let index = indexSet.first else { return }
        let entity = savedEntities[index]
        container.viewContext.delete(entity)
        saveData()
     }
    
        
    }

