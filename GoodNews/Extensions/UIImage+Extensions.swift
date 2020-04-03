//
//  UIImage+Extensions.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation
import UIKit


extension UIImage {
    
    static func imageForPlaceHolder() -> UIImage {
        
        return UIImage(named: "placeholder")!
        
    }
    
    static func imageForHeadline(url: String, completion: @escaping (UIImage) -> ()) {
        
        guard let imageURL = URL(string: url) else {
            completion(UIImage.imageForPlaceHolder())
            return
        }
        
        DispatchQueue.global().async {
            
            if let data = try? Data(contentsOf: imageURL) {
                
                if let downloadImage = UIImage(data: data) {
                    completion(downloadImage)
                }
                
            }
        }
    }
}
