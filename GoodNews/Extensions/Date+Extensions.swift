//
//  Date+Extensions.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation

extension Date {
    
    static func dateAsStringForTableViewHeader() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd"
        return formatter.string(from: Date())
        
    }

}
