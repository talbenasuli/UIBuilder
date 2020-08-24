//
//  TextfieldBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 23/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UITextField {
    
    func borderStyle( _ borderStyle: BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
}
