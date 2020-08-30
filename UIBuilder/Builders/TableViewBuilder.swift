//
//  TableViewBuilder.swift
//  ExPeIOS
//
//  Created by Tal Ben Asuli MAC  on 19/08/2020.
//  Copyright © 2020 expe. All rights reserved.
//

import UIKit

public extension UITableView {
    
    @discardableResult
    func register(cells: [UITableViewCell.Type]) -> Self {
        for cell in cells {
            self.register(cell)
        }
        return self
    }
    
    func register(header: UITableViewHeaderFooterView.Type) -> Self {
        self.register(header)
        return self
    }
    
    func dataSource(_ dataSource: UITableViewDataSource) -> Self {
        self.dataSource = dataSource
        return self
    }
    
    func delegate(_ delegate: UITableViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }
    
    func backgroundView(_ view: UIView) -> Self {
        self.backgroundView = view
        return self
    }
    
    func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> Self {
        self.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Self {
        self.separatorStyle = separatorStyle
        return self
    }
    
    func separatorColor(_ separatorColor: UIColor) -> Self {
        self.separatorColor = separatorColor
        return self
    }
}
