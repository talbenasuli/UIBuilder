//
//  ButtonBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 04/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UIButton {
    
    func text(_ text: String?, for state: UIControl.State = .normal) -> Self {
        setTitle(text, for: .normal)
        return self
    }
    
    func attributedText(_ attributedText: NSAttributedString, for state: UIControl.State = .normal) -> Self {
        setAttributedTitle(attributedText, for: state)
        return self
    }
    
    func tint(_ color: UIColor) -> Self {
        tintColor = color
        return self
    }
    
    func font(_ font: UIFont) -> Self {
        titleLabel?.font = font
        return self
    }
    
    func textColor(_ textColor: UIColor, for state: UIControl.State = .normal) -> Self {
        setTitleColor(textColor, for: state)
        return self
    }
    
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        titleLabel?.textAlignment = textAlignment
        return self
    }
    
    func showsTouchWhenHighlighted(_ showsTouchWhenHighlighted: Bool) -> Self {
        self.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        return self
    }
    
    func backgorund(_ backgorund: UIImage, for state: UIControl.State = .normal) -> Self {
        setBackgroundImage(backgorund, for: state)
        return self
    }
    
    func image(_ image: UIImage, for state: UIControl.State = .normal) -> Self {
        setImage(image, for: state)
        return self
    }
    
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    func contentEdgeInsets(_ contentEdgeInsets: UIEdgeInsets) -> Self {
        self.contentEdgeInsets = contentEdgeInsets
        return self
    }
    
    func titleEdgeInsets(_ titleEdgeInsets: UIEdgeInsets) -> Self {
        self.titleEdgeInsets = contentEdgeInsets
        return self
    }
    
    func imageEdgeInsets(_ imageEdgeInsets: UIEdgeInsets) -> Self {
        self.imageEdgeInsets = imageEdgeInsets
        return self
    }
}
