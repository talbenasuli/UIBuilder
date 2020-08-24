//
//  StackViewBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 04/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UIStackView {
    
    func addArrangedSubview(_ views: UIView...) {
        for view in views {
            addArrangedSubview(view)
        }
    }
    
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    func removeFully(view: UIView) {
        removeArrangedSubview(view)
        view.removeFromSuperview()
    }
    
    func removeAllSubviews() {
        arrangedSubviews.forEach { view in
            removeFully(view: view)
        }
    }
}
