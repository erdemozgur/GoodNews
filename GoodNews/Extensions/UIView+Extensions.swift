//
//  UIView+Extensions.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    static func viewForTableViewHeader(subtitle: String) -> UIView {
        
        let screenRect = UIScreen.main.bounds
        
        let subTitleView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.size.width, height: 44)))
        
        let subtitleLabel = UILabel(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.size.width, height: 44)))
        
        subtitleLabel.text = subtitle
        subtitleLabel.textAlignment = .center
        subtitleLabel.textColor = UIColor.gray
        
        subTitleView.addSubview(subtitleLabel)
        return subTitleView
        
    }
}
