//
//  DismisButton.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 30/11/2024.
//

import SwiftUI

struct DismisButton: View {
    @Environment(\.dismiss) var dismissScreen
    var body: some View {
        
        Button {
            dismissScreen()
        } label: {
            Image(systemName: "arrow.left")
                .font(.largeTitle)
                .foregroundStyle(Color.gray.opacity(0.9))
            
               
        }

        
        
       
            
    }
}

#Preview {
    DismisButton()
}
