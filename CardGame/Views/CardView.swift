//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting


struct CardView: View {
    @StateObject private var QVM = QuestionViewModel()

    
    var body: some View {
        
            RouterView { router in
                ZStack{
                    Color(.backgroundCard)
                        .ignoresSafeArea()
                    
                    
                    VStack(spacing:30) {
                        
                        
                        circleButton1().asButton {
                            router.showScreen(.sheet) { _ in
                                QuestionView(QVM: QVM)
                                    .toolbar(.visible)
                                
                            }
                        }
                        
                       
                        Toggle("Hard Mode", isOn: $QVM.filterOnlyEasyQuestions)
                            .toggleStyle(SwitchToggleStyle(tint: .red))
                            .padding()
                            .foregroundStyle(Color.black)
                            .background(Color.white)
                        
                            .clipShape(RoundedRectangle(cornerRadius: 40))
                        
                            .padding(.horizontal, 120)
                    }
                }
            }
            .background(Color.backgroundCard.ignoresSafeArea())
            
            
        }
   
    }

#Preview {
    CardView()

}

extension CardView {
    struct circleButton1: View {
        var body: some View {
            Circle()
                .fill(RadialGradient(colors: [Color(.backgroundCard), Color(.foregroundCard)],
                                     center: .bottom,
                                     startRadius: 150,
                                     endRadius: 0))
                .shadow(color:.white, radius: 50)
                .frame(maxWidth: 150, maxHeight: 150)
                .overlay {
                    Image(systemName: "play")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: 100, maxHeight: 100)
                        .clipShape(Circle())
                        .font(.largeTitle)
                        .background(Color.clear)
                        .clipShape(Circle())
                }
        }
                }
        }

