//
//  NavigationBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 02/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

extension UIViewController {
    func embedToNavigation() -> UINavigationController {
        return UINavigationController(rootViewController: self)
    }
}

extension UINavigationController {
    
    func color(_ color: UIColor) -> Self {
        navigationBar.barTintColor = color
        return self
    }
    
    func withAppStlye() -> Self {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
        view.backgroundColor = .clear
        return self
    }
    
    func hideBackButton(_ hide: Bool) -> Self {
        navigationItem.hidesBackButton = hide
        return self
    }
}

