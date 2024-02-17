//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Nazrin Atayeva on 17.02.24.
//

import UIKit

struct UIHelper {
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width                           = view.bounds.width
        let padding: CGFloat                = 12
        let minimuItemSpacing: CGFloat      = 10
        let availableWidth                  = width - (padding * 2) - (minimuItemSpacing * 2)
        let itemWidth                       = availableWidth / 3
        
        let flowLayout                      = UICollectionViewFlowLayout()
        flowLayout.sectionInset             = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize                 = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
}
