//
//  TextfieldBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 23/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UITextField {
    
    func text(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    func borderStyle( _ borderStyle: BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
    
    func placeHolder(_ placeHolder: String) -> Self {
        self.placeholder = placeHolder
        return self
    }
    
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self{
        self.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    func textColor(_ textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }
    
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    func leftView( _ leftView: UIView) -> Self {
        self.leftView = leftView
        return self
    }
    
    func rightView( _ rightView: UIView) -> Self {
        self.rightView = rightView
        return self
    }
    
    func inputView(_ inputView: UIView?) -> Self {
        self.inputView = inputView
        return self
    }
    
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        self.inputAccessoryView = inputAccessoryView
        return self
    }
    
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }
}
