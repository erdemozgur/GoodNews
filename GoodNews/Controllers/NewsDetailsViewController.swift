//
//  NewsDetailsViewController.swift
//  GoodNews
//
//  Created by Erdem Özgür on 3.04.2020.
//  Copyright © 2020 Erdem Özgür. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class NewsDetailsViewController: UIViewController {
    
    var article: Article!
    private var newsDetailsVM: NewsDetailsViewModel!
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    
    private func setupUI() {
        
        self.newsDetailsVM = NewsDetailsViewModel(article)
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = self.newsDetailsVM.sourceName
        
        guard let url = self.newsDetailsVM.url,
            let newsDetailURL = URL(string: url) else {
                return
        }
        
        let request = URLRequest(url: newsDetailURL)
        self.webview.load(request)
    }
    
     func webView(_ webView: WKWebView,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
    {
        if(challenge.protectionSpace.authenticationMethod == NSURLAuthenticationMethodServerTrust)
        {
            let cred = URLCredential(trust: challenge.protectionSpace.serverTrust!)
            completionHandler(.useCredential, cred)
        }
        else
        {
            completionHandler(.performDefaultHandling, nil)
        }
    }
}
