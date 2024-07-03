//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
       
        NavigationStack {
            
            VStack{
                Text("gdsf")
                    .font(.largeTitle)
                    .bold()
            }
           
        }
        .navigationTitle("Card Game")
        .navigationBarTitleDisplayMode(.large)
        .background(Color.gray)
        
    }
}

#Preview {
    CardView()
}
