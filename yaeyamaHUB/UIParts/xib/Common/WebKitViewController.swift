//
//  WebKitViewController.swift
//  yaeyamaHUB
//
//  Created by 飯野 竜矢 on 2021/07/06.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    var url: URL?
    
    override func loadView() {
        super.loadView()
        let config = WKWebViewConfiguration()
        config.applicationNameForUserAgent = "MyApp"
        
        webView = WKWebView(frame: self.view.frame, configuration: config)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(webView)
        
        webView.navigationDelegate = self
        webView.uiDelegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       if let site = url {
          let req = URLRequest(url: site)
          webView.load(req)
       }
    }
}

extension WebKitViewController: WKNavigationDelegate {
   
    
    // for next request
    internal func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow) //下のif文から取り出し
    }
    
    // basic auth
    func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge,
                 completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        // atteyaa.com限定
        let cred = URLCredential(user: "AlphaUser001", password: "AtteyaaPlatform1120", persistence: .forSession)
        completionHandler(.useCredential, cred)
    }
    
}

