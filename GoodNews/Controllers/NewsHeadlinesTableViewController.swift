//
//  NewsHeadlinesTableViewController.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation
import UIKit

class NewsHeadlinesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    fileprivate func setupUI() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        
    }
    
}
