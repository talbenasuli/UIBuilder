//
//  ButtonBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 04/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UIButton {
    
    func text(_ text: String?) -> Self {
        setTitle(text, for: .normal)
        return self
     }
    
    func tint(_ color: UIColor) -> Self {
        tintColor = color
        return self
    }
}
