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
    
    let news = [["title": "This is the title", "description": "This is the descriptionn"], ["title": "This is the title", "description": "This is the descriptionn This is the descriptionn This is the descriptionn This is the descriptionn "] ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }
    
    fileprivate func setupUI() {
                
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.news.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsHeadlineTableViewCell", for: indexPath) as? NewsHeadlineTableViewCell else {
            fatalError("NewsHeadlineTableViewCell is not found")
        }
        cell.titleLabel.text = self.news[indexPath.row]["title"]
        cell.descriptionLabel.text = self.news[indexPath.row]["description"]
        
        return cell
        
        
        
    }
    
}
