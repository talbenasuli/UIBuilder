//
//  ImageViewBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 04/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    func contentMode(_ mode: UIView.ContentMode) -> Self {
        self.contentMode = mode
        return self
    }
    
    func image(_ image: UIImage) -> Self {
        self.image = image
        return self
    }
}

public extension UIImage {
    
    var view: UIImageView {
        return UIImageView(image: self)
    }
    
    var button: UIButton {
        return button(with: .system)
    }
    
    func button(with type: UIButton.ButtonType) -> UIButton {
        let button = UIButton(type: type)
        button.frame = CGRect(origin: .zero, size: self.size)
        button.setImage(self, for: .normal)
        return button
    }
    
    var barButton: UIBarButtonItem {
        return UIBarButtonItem(image: self, style: .plain, target: nil, action: nil)
    }
    
    func flip(orientation: Orientation) -> UIImage {
        return UIImage(cgImage: cgImage!, scale: 1.0, orientation: orientation)
    }
}


public extension UIColor {
    func image(ofSize size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
}

