//
//  Category.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation

struct Category {
    
    let title: String
    let articles: [Article]
    
    static func all() -> [String] {
        return ["Business","Entertainment","General","Sports"]
    }
    
}
