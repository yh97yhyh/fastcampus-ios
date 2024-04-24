//
//  MyTableViewController.swift
//  MyUIKit
//
//  Created by 영현 on 4/24/24.
//

import UIKit

class MyTableViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    let cellData = ["Hello1", "Hello2", "Hello3", "Hello4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myTableView.backgroundColor = .gray
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row]
        return cell
    }
    
    
}
