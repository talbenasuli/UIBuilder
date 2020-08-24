//
//  LabelBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 04/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

extension UILabel {
    
    func text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    func aliment(_ aliment: NSTextAlignment) -> Self {
        self.textAlignment = aliment
        return self
    }
    
    func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
}
