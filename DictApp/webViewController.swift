//
//  webViewController.swift
//  DictApp
//
//  Created by SEZAX development on 18/04/2021.
//

import UIKit
import WebKit

class webViewController: UIViewController {
    @IBOutlet weak var detailWebView: WKWebView!
    // Part receiving data
    var data: String!
   
    // First what to do?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Specify the URL
        let urlString = "https://vi.wiktionary.org/wiki/\(self.data.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)"
        // Translate URL for iPhone
        let url = URL(string: urlString)
        // Request by URL above
        let request = URLRequest(url: url!)
        // Then show the page of specified URL to detailWebView
        self.detailWebView.load(request)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
