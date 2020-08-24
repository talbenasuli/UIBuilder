//
//  NavigationBarBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 10/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

enum BarStyle {
    case title(String)
    case separator(UIColor)
    case background(color: UIColor)
    case left(buttons: [UIBarButtonItem])
    case right(buttons: [UIBarButtonItem])
    case center(view: UIView)
    case hideBack
}


extension UIViewController {
    
    @discardableResult
    func navigation(barStyle: BarStyle...) -> Self {
        
        for option in barStyle {
             switch option {
             case .hideBack:
                 self.navigationItem.hidesBackButton = true
             case let .separator(color):
                 self.navigationController?.navigationBar.shadowImage = color.image()
             case .background(color: let color):
                 self.navigationController?.navigationBar.setBackgroundImage(color.image(), for: .default)
             case let .left(buttons):
                 self.navigationItem.setLeftBarButtonItems(buttons, animated: true)
             case let .right(buttons):
                 self.navigationItem.setRightBarButtonItems(buttons, animated: true)
             case let .center(content):
                 let contentView = UIView()
                 contentView.addSubview(content)
                 self.navigationItem.titleView = contentView
             case let .title(title):
                self.navigationItem.titleView = title.label
            }
         }
         
         return self
    }
}
