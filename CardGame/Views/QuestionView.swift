//
//  QuestionViewModel.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 10/07/2024.
//

import SwiftUI

struct QuestionView: View {
    
    @ObservedObject var questionViewModel = QuestionViewModel()
    
  

    @State var animation: Bool = false
    
    var body: some View {
        
        ZStack{
            VStack{
                Text(questionViewModel.actualQuestion?.question ?? "Naciśni losój")
                    .foregroundStyle(Color.black)
                    .font(.title2)
                    .padding(30)
                    .background(RadialGradient(colors: [Color(#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)), Color(#colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1))],
                                               center: .center,
                                               startRadius: 200,
                                               endRadius: 45))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .frame(maxWidth: .infinity)
                    .padding(animation ? 10 : 50)
                                        
                
                HStack(alignment:.center) {
                    Group {
                        Circle()
                            .fill(Color(.red))
                            .frame(width: 70, height: 70)
                            .overlay {
  
                            }
                        
                        Circle()
                            .fill(Color(.blue))
                            .frame(width: 70, height: 70)
                            .overlay {
                                Text(questionViewModel.actualQuestion?.punishment.description ?? "")
                            }
                    }
                    .padding(30)
                    .font(.largeTitle)
                }
                .padding(30)
                .onAppear {
                    questionViewModel.randomQuestion()
                }
                
                Spacer()
                
                Button("Losuj pytanie") {
                    withAnimation(.smooth) {
                        animation.toggle()
                        questionViewModel.randomQuestion()
                    }
                }
                
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .buttonStyle(.bordered)
            }
            
        }
        .background(Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)))
    }
    
//    func pointSum() {
//        let pointInt = Int(us.point)
//        let newPoints = pointInt + randomQuestion.points
//        
//    }
    
    
}
#Preview {
    QuestionView()

}
