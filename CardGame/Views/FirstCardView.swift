//
//  FirstCardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 28/11/2024.
//

import SwiftUI

struct FirstCardView: View {
    var question = "pytanie"
    var punishment = 3
    var points = 3
    var cardColor = Color.blue
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(cardColor)
                .overlay(
                    VStack(alignment: .center, spacing: 20) {
                        //                        DismisButton()
                        //                            .padding(.top)
                        //                        Spacer()
                        Text(question)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .bold()
                            .padding()
                        
                        HStack{
                            ForEach(0..<punishment, id: \.self) { _ in
                                Image("shotGlassIcon")
                            }
                        }
                        
                        HStack{
                            ForEach(0..<points, id: \.self) { _ in
                                Image("points-30")
                                    .scaledToFit()
                            }
                        }
                        
                    }
                )
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    FirstCardView()
        .padding()
}
