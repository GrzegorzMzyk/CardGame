//
//  QuestionViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 10/07/2024.
//

import SwiftUI


struct QuestionView: View {
    
    @ObservedObject var questionViewModel = QuestionViewModel()
    @State private var scrollPosition: Int? = nil
    @State var offset: CGSize = .zero
    @State var animation: Bool = false
    
    var body: some View {
        ScrollView() {
            VStack(spacing:0) {
                ForEach(0..<146) { _ in
                    let randomIndex = Int.random(in: 0..<questionViewModel.quesstios.endIndex)
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle((RadialGradient(colors: [Color(#colorLiteral(red: 1, green: 0.02556545474, blue: 0, alpha: 0.5)), Color(#colorLiteral(red: 0.5808190107, green: 0.0884276256, blue: 0.3186392188, alpha: 0.7450331126))],
                                                         center: .bottom,
                                                         startRadius: 500,
                                                         endRadius: 50)))
                        .shadow(color:.orange, radius: 50)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding(.vertical, 100)
                        .overlay {
                            VStack{
                                
                                Text(questionViewModel.quesstios[randomIndex].question)
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundStyle(Color.white)
                                    .padding()
                                    .multilineTextAlignment(.center)
                                ZStack{
                                    Circle()
                                    
                                    VStack{
                                        Image(systemName:"wineglass.fill")
                                            .font(.title)
                                        Text("\(questionViewModel.quesstios[randomIndex].punishment)")
                                            .foregroundStyle(Color.white)
                                    }
                                    .foregroundStyle(Color.white)
                                }
                                .frame(maxWidth:70, maxHeight: 70)
                                    .padding(.leading, 290)
                                    
                                }
                            
                        }
                    
                        .padding(10)
                        .containerRelativeFrame(.vertical, alignment: .center)
                        .scrollTransition(.interactive.threshold(.visible(0.9))) {
                            content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0)
                                .offset(y: phase.isIdentity ? 0 : -100)
                            
                        }
                }
                
            }
          
        }
     
        .ignoresSafeArea()
        .scrollTargetLayout()
        .scrollTargetBehavior(.paging)
        .scrollBounceBehavior(.basedOnSize)
        .background(Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)))
        
        
    }
    
}

#Preview {
    QuestionView()

}

