//
//  ViewController.swift
//  DictApp
//
//  Created by SEZAX development on 17/04/2021.
//

import UIKit

// consult to tableview 1
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var dictTableView: UITableView!
    // Prepare the array
    var dictData: [String] = [
        "luật sư",
        "nhân viên",
        "kỹ sư",
        "bác sĩ",
        "y tá"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // consult to tableView 2
        self.dictTableView.delegate = self
        self.dictTableView.dataSource = self
    }
    // consult to tableView
    // number of section?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // number of cell?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // How to do content of each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // take cell like "cell"
        let cell = self.dictTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        cell.textLabel?.text = self.dictData[indexPath.row]
        return cell
    }
    
    // How to do when choose the cell in each rows?
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Move to next page
        // Call "WebPage"
        // Guarantee its identity
        let next = self.storyboard?.instantiateViewController(withIdentifier: "WebPage") as! webViewController
        // Pass the data
        next.data = self.dictData[indexPath.row]
        // Show
        show(next, sender: nil)
        
        
    }
}

