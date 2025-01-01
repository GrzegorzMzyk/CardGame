//
//  Haptics.swift
//  CardGame
//
//  Created by Grzegorz Mzyk on 01/01/2025.
//

import Foundation
import SwiftUI

class HapticsManager {
    static let instance = HapticsManager() // Singleton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style:style)
        generator.impactOccurred()
    }
}



struct ShakeManager: UIViewRepresentable {
    var onShake: () -> Void

    class ShakeView: UIView {
        var onShake: () -> Void

        init(onShake: @escaping () -> Void) {
            self.onShake = onShake
            super.init(frame: .zero)
            self.becomeFirstResponder() // Aktywacja nasłuchiwania
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override var canBecomeFirstResponder: Bool {
            return true
        }

        override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake {
                onShake() // Wywołanie akcji przy potrząśnięciu
            }
        }
    }

    func makeUIView(context: Context) -> ShakeView {
        return ShakeView(onShake: onShake)
    }

    func updateUIView(_ uiView: ShakeView, context: Context) {}
}
