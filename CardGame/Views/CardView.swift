//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    @StateObject private var viewModel = QuestionViewModel()
    @State var gameSheetIsPresented = false
   
    
    var body: some View {
        ZStack{
            Color.backgroundCard
                .ignoresSafeArea()
            VStack(spacing:30) {
                Button {
                    HapticsManager.instance.notification(type: .success)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        gameSheetIsPresented = true
                    }
                } label: {}
                    .buttonStyle(CustomButtonStyle())
                
               
                ShakeManager {
                    viewModel.filterOnlyEasyQuestions.toggle()
                }
                .frame(width: 100, height: 100)
                .overlay {
                    Toggle(isOn: $viewModel.filterOnlyEasyQuestions,
                           label: {
                        VStack{
                            Text("Hard Mode")
                                .fontWeight(.bold)
                            Text("shake to \(viewModel.filterOnlyEasyQuestions ? "off" : "on")")
                                .fontWeight(.light)
                                .font(.subheadline)
                        }
                    }
                    )
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                        .padding()
                        .foregroundStyle(Color.black)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 250, height: 150)
                     
                }
              
              
            }
          
        }
        .background(Color.backgroundCard.ignoresSafeArea())
        .fullScreenCover(isPresented: $gameSheetIsPresented) {
            QuestionView(viewModel: viewModel)
        }
    }
}

#Preview {
    CardView()
}


struct CustomButtonStyle: ButtonStyle {
    
    private let theme: RadialGradient =
    (RadialGradient(colors:[
        Color.backgroundCard,
        Color.foregroundCard],
                    center: .bottom,
                    startRadius: 150,
                    endRadius: 0))
    
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
        Circle()
            .fill(theme)
            .shadow(color:.white, radius: 50)
            .frame(width: 150, height: 150)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .opacity(configuration.isPressed ? 0.1 : 1)
            .animation(.easeIn, value: configuration.isPressed)
            .overlay {
                Image(systemName: "play")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
            }
    }
}



