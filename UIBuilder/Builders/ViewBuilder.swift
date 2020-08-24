//
//  UIView.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 04/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UIView {
    
    func addViews(views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
    func backgorundColor(_ color: UIColor) -> Self {
        backgroundColor = color
        return self
    }
    
    enum ViewSide {
        case left, right, top, bottom
    }
    
    func addBlur() {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(blurEffectView)
    }
    
    func round(corners: CACornerMask, withRadius radius: CGFloat) -> Self {
        layer.cornerRadius = radius
        layer.maskedCorners = corners
        return self
    }
}

public extension String {
    
    var label: UILabel {
        let label = UILabel()
        label.text = self
        return label
    }
    
    var textField: UITextField {
        let tf = UITextField()
        tf.text = self
        return tf
    }
    
    var button: UIButton {
        return button(withType: .system)
    }
    
    var barButton: UIBarButtonItem {
        return UIBarButtonItem(title: self, style: .plain, target: nil, action: nil)
    }
    
    func tabBarButton(tag: Int = 0) -> UITabBarItem {
        return UITabBarItem(title: self, image: nil, tag: tag)
    }
    
    func button(withType type: UIButton.ButtonType) -> UIButton {
        let button = UIButton(type: type)
        button.setTitle(self, for: .normal)
        return button
    }
    
    var image: UIImage? {
        if self.isEmpty {
            return UIImage()
        }
        return UIImage(named: self)
    }
    
    var url: URL? {
        return URL(string: self)
    }
    
    func log() {
        print(self)
    }
}


func isRTL() -> Bool {
    return UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft
}
