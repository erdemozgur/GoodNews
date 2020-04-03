//
//  NewsDetailsViewModel.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation


struct NewsDetailsViewModel {
    
    let article: Article

}

extension NewsDetailsViewModel {
    
    init(_ article: Article) {
        self.article = article
    }
}

extension NewsDetailsViewModel {
    
    var sourceName: String {
        return self.article.sourceName
    }
    
    var url: String? {
        return self.article.url
    }
    
}
