//
//  CardView.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 03/07/2024.
//

import SwiftUI

struct CardView: View {
    @StateObject private var QVM = QuestionViewModel()
    @State var gameSheetIsPresented = false

    var body: some View {
            ZStack{
                Color.backgroundCard
                    .ignoresSafeArea()
                VStack(spacing:30) {
                    /// Tutaj użyta jest składnia trailing closure, poniżej, wykomentowana, jest alternatywna składnia
                    PlayButton {
                        gameSheetIsPresented = true
                    }
//                    PlayButton(action: {
//                        gameSheetIsPresented = true
//                    })
                    Toggle("Hard Mode", isOn: $QVM.filterOnlyEasyQuestions)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                        .padding()
                        .foregroundStyle(Color.black)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .padding(.horizontal, 120)
                }
        }
        .background(Color.backgroundCard.ignoresSafeArea())
        .sheet(isPresented: $gameSheetIsPresented) {
            QuestionView(QVM: QVM)
        }
    }
}

#Preview {
    CardView()
}

struct PlayButton: View {
    var action: ()->()

    var body: some View {
        Circle()
            .fill(RadialGradient(colors: [Color.backgroundCard, Color.foregroundCard],
                                 center: .bottom,
                                 startRadius: 150,
                                 endRadius: 0))
            .shadow(color:.white, radius: 50)
            .frame(maxWidth: 150, maxHeight: 150)
            .onTapGesture {
                action()
            }
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


