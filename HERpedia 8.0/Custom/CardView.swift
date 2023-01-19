//
//  CardView.swift
//  HERpedia 8.0
//
//  Created by Zahra Zams on 19/01/23.
//

import Foundation
import UIKit

@IBDesignable class CardView: UIView {
    @IBInspectable var cornnerRadius : CGFloat = 5
    var ofsetWidth : CGFloat = 5
    var ofsetHeight : CGFloat = 5
    
    var ofsetShadowOpacity : Float = 5
    @IBInspectable var colour = UIColor.systemGray4
    
    override func layoutSubviews() {
        layer.cornerRadius = self.cornnerRadius
        layer.shadowColor = self.colour.cgColor
        layer.shadowOffset = CGSize(width: self.ofsetWidth, height: self.ofsetHeight)
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: self.cornnerRadius).cgPath
        layer.shadowOpacity = self.ofsetShadowOpacity
    }
}
