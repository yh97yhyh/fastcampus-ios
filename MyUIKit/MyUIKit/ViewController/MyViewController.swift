//
//  MyViewController.swift
//  MyUIKit
//
//  Created by 영현 on 4/24/24.
//

import UIKit

protocol AdminDelegate {
    func doTask()
}

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    var admin: Admin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .red
        // Do any additional setup after loading the view.
        admin = Admin(delegate: self)
    }
    

    @IBAction func didTabButton(_ sender: Any) {
        if let name = nameTextField.text {
            helloLabel.text = "Hello \(name)!"
        }
        admin?.delegate.doTask()
    }
}

extension MyViewController: AdminDelegate {
    func doTask() {
        print("일하고 있어요")
    }
}

struct Admin {
    var delegate: AdminDelegate
}
