//
//  UIView+Extension.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 11/01/23.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
