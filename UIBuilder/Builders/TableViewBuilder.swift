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
}
