//
//  URL+Extensions.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation

extension URL {
    
    static func urlForTopHeadlines(for category: String) -> URL {
        
        return URL(string: "http://newsapi.org/v2/top-headlines?category=\(category)&apiKey=0d9ec00bde264043a3619ecb43f46320")!
        
    }
    
    
    
}
