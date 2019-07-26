//
//  UILabel+Extension.swift
//  TujuhJambatanKönigsberg
//
//  Created by Mosquito1123 on 26/07/2019.
//  Copyright © 2019 Cranberry. All rights reserved.
//

import UIKit

extension UILabel {
    
    /// Changes the text of the UILabel with a crossfade transition.
    ///
    /// - parameter to: The new text for the label.
    /// - parameter duration: How long (in seconds) the transition should last for.
    ///
    func changeTextWithFade(to newText: String, duration: Double = 0.5) {
        UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
            self.text = newText
        }, completion: nil)
    }
}
