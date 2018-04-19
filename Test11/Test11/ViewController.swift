//
//  ViewController.swift
//  Test11
//
//  Created by Admin on 3/25/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataNumber = DataSourceNumber()
    var dataCharacter = DataSourceCharacter()
    
    @IBOutlet var viewHeader: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var footerView: UIView!
    
    var check: Bool = false {
        didSet {
            tableView.tableFooterView = check ? viewHeader : footerView
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataNumber
        dataNumber.viewController = self
        dataCharacter.viewController = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchButton(_ sender: UISwitch) {
        if sender.isOn {
            tableView.dataSource = dataNumber
            check = (dataNumber.arr.count == 0)
            if check == false {tableView.reloadData()}
        } else {
            tableView.dataSource = dataCharacter
            check = dataCharacter.arrString.count == 0
        }
        tableView.reloadData()
    }
    

}

