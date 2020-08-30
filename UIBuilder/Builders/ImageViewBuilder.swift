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
    
    func highlightedImage(_ highlightedImage: UIImage) -> Self {
        self.highlightedImage = highlightedImage
        return self
    }
    
    func isHighlighted(_ isHighlighted) -> Self {
        self.isHighlighted = isHighlighted
        return self
    }
    
    func tintColor(_ tintColor: UIColor) -> Self {
        self.tintColor = tintColor
        return self
    }
}

public extension UIImage {
    
    var view: UIImageView {
        return UIImageView(image: self)
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

