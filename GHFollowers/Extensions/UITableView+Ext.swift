//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Nazrin Atayeva on 07.03.24.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread(){ DispatchQueue.main.async { self.reloadData() }}
    
    func removeExcessCells(){ tableFooterView = UIView(frame: .zero) }
    
}
