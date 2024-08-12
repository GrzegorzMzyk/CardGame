//
//  UserSheet.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 12/08/2024.
//

import SwiftUI

struct UserSheet: View {
    @Environment(\.dismiss) var dismissScreen
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                dismissScreen()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
               
            })
        }
        UserViewModel.init()
    }
}


#Preview {
    UserSheet()
}
