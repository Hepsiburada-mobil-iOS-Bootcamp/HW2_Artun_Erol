//
//  UIButton+Extension.swift
//  permissionProjectLast
//
//  Created by Artun Erol on 30.09.2021.
//

import Foundation
import UIKit

extension UIButton {
    
    ///Animating Button
    func animateButton() {
        transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 2, options: .allowUserInteraction) {
            self.transform = .identity
        }
        self.layoutIfNeeded()

    }
}
