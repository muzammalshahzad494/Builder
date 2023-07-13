//
//  TableViewHelper.swift
//  Builder
//
//  Created by Muzammal Shahzad on 5/29/23.
//

import UIKit

class TableViewHelper {
    static func registerTableViewCell<T: UITableViewCell>(tableView: UITableView, cellClass: T.Type) {
           let reuseIdentifier = String(describing: cellClass)
           tableView.register(cellClass, forCellReuseIdentifier: reuseIdentifier)
       }
}
