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
    
    private var categoryListVM: CategoryListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        populateHeadlinesAndArticles()
        
    }
    
    fileprivate func populateHeadlinesAndArticles() {
        
        CategoryService().getAllHeadlinesForAllCategories { [weak self] categories in
            self?.categoryListVM = CategoryListViewModel(categories: categories)
            self?.tableView.reloadData()
        }
        
    }
    
    fileprivate func setupUI() {
                
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 600
        
        self.tableView.tableHeaderView = UIView.viewForTableViewHeader(subtitle: Date.dateAsStringForTableViewHeader())
        
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.categoryListVM.heightForHeaderInSection(section)
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let name = self.categoryListVM.categoryAtIndex(index: section).name
        return UIView.viewForSectionHeader(title: name)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.categoryListVM == nil ? 0 : self.categoryListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categoryListVM.numberOfRowsInSection(section)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsHeadlineTableViewCell", for: indexPath) as? NewsHeadlineTableViewCell else {
            fatalError("NewsHeadlineTableViewCell is not found")
        }
        let articleVM = self.categoryListVM.categoryAtIndex(index: indexPath.section).articleAtIndex(index: indexPath.row)
        
        cell.configure(vm: articleVM)
        
        return cell
    }
    

    
    
}
