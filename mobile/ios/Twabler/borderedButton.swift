//
//  borderedButton.swift
//  Twabler
//
//  Created by Ariel Takvam on 6/19/19.
//  Copyright © 2019 Sycorax. All rights reserved.
//

import UIKit

@IBDesignable class borderedButton: UIButton {
    
        @IBInspectable var borderColor: UIColor? {
            didSet {
                if let bColor = borderColor {
                    self.layer.borderColor = bColor.cgColor
                }
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                self.layer.borderWidth = borderWidth
            }
        }
        
        override var isHighlighted: Bool {
            didSet {
                guard let currentBorderColor = borderColor else {
                    return
                }
                
                let fadedColor = currentBorderColor.withAlphaComponent(0.2).cgColor
                
                if isHighlighted {
                    layer.borderColor = fadedColor
                } else {
                    
                    self.layer.borderColor = currentBorderColor.cgColor
                    
                    let animation = CABasicAnimation(keyPath: "borderColor")
                    animation.fromValue = fadedColor
                    animation.toValue = currentBorderColor.cgColor
                    animation.duration = 0.4
                    self.layer.add(animation, forKey: "")
                }
            }
        }
    }

 
