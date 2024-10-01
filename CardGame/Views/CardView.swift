//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    
    @State var showUsers:Bool = false
    var body: some View {
        
        NavigationStack {
            Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1))
                .ignoresSafeArea()
                .overlay{
                    Circle()
                    
                        .fill(RadialGradient(colors: [Color(#colorLiteral(red: 1, green: 0, blue: 0.09904881567, alpha: 1)), Color(#colorLiteral(red: 0.5808190107, green: 0.0884276256, blue: 0.3186392188, alpha: 1))],
                                             center: .bottom,
                                             startRadius: 150,
                                             endRadius: 0))
                        .shadow(color:.orange, radius: 50)
                        .frame(maxWidth: 150, maxHeight: 150)
                        .overlay {
                            NavigationLink {
                                
                                QuestionView()
                                
                            } label: {
                                Image(systemName: "play")
                                    .foregroundColor(Color.white)
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .clipShape(Circle())
                                    .font(.largeTitle)
                                    .background(Color.clear)
                                    .clipShape(Circle())
                                
                            }
                        }
//                     
                        .navigationTitle(Text("Card Game"))
                    
                    
                        .toolbar(content: {
                            Button(action: {
                                showUsers.toggle()
                            }, label: {
                                Text("Users")
                            })
                            .sheet(isPresented: $showUsers, content: {
                                // nie dodawac tu if else ...
                                UserSheet()
                            })})
                }
            
        }
        
        
    }
}
    



#Preview {
    CardView()

}


