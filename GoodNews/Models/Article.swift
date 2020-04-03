//
//  Article.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation


struct NewSourcesResponse: Decodable {
    
    let articles: [Article]
    
}


struct Article: Decodable {
    
    let title: String?
    let description: String?
    let url: String?
    let imageURL: String?
    
    private enum CodingKeys: String, CodingKey {
        
        case title
        case description
        case url
        case imageURL = "urlToImage"
        
    }
    
}

extension Article {
    
    static func by(_ category: String) -> Resource<[Article]> {
        
        return Resource<[Article]>(url: URL.urlForTopHeadlines(for: category)) { data in
            
            return try! JSONDecoder().decode(NewSourcesResponse.self, from: data).articles
            
        }
        
    }
    
    
}
