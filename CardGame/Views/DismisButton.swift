//
//  DismisButton.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 30/11/2024.
//

import SwiftUI
import SwiftfulRouting





struct DismisButton: View {
    var body: some View {
        RouterView { router in
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 4)
                .frame(maxWidth: 30)
                .onTapGesture {
                    router.dismissScreen()
                }
        }
    }
}

#Preview {
    DismisButton()
}
