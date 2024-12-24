//
//  DismisButton.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 30/11/2024.
//

import SwiftUI

struct DismisButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 4)
            .frame(maxWidth: 30)
            .onTapGesture {
                //TODO: implement or move interaction to containing view
            }
    }
}

#Preview {
    DismisButton()
}
