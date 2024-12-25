//
//  QuestionViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 10/07/2024.
//

import SwiftUI
struct QuestionView: View {

    /// View modele może nazywałbym wszędzie po prostu viewModel zamiast QVM. Nie musisz się wtedy zastanawiać/pamiętać
    /// w którym View jaki sktót odpowiada jakiemu view modelowi
    @ObservedObject var QVM = QuestionViewModel()
    @State private var dragOffset: CGSize = .zero
    @State private var floatingOffset: CGFloat = .zero

    var body: some View {

        NavigationStack {
            ZStack {
                // Aktualna karta
                if let currentQuestion = QVM.currentQuestion {
                    cardView(for: currentQuestion, isHard: currentQuestion.isHard)
                        .offset(y: dragOffset.height + floatingOffset)
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    dragOffset = gesture.translation
                                }
                                .onEnded { gesture in
                                    if gesture.translation.height > 100 {
                                        // Gdy przeciągnięcie jest wystarczające
                                        withAnimation {
                                            dragOffset = .zero
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                                QVM.loadNextQuestion()
                                            }
                                        }
                                    } else {
                                        // Powrót do pierwotnej pozycji
                                        withAnimation {
                                            dragOffset = .zero
                                        }
                                    }
                                }
                        )
                        .onAppear(perform: {
                            startFloatingAnimation()
                        })
                        .animation(.bouncy, value: dragOffset) // Animacja powrotu
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.backgroundCard)
            .toolbar(.visible)
        }
    }

    private func startFloatingAnimation() {
        withAnimation(
            Animation.easeInOut(duration: 1.5)
                .repeatForever(autoreverses: true)
        ) {
            floatingOffset = 10 // Delikatne przesunięcie w dół
        }
    }

    // Reusable card view function
    private func cardView(for question: QuestionsModel, isHard: Bool) -> some View {
        FirstCardView(
            question: question.question,
            punishment: question.punishment,
            points: question.points,
            cardColor: isHard ? Color.foregroundRedCard : Color.foregroundCard
        )
    }
}

#Preview {
    QuestionView()
}

