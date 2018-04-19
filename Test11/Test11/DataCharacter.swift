//
//  DataCharacter.swift
//  Test11
//
//  Created by Admin on 3/25/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class DataSourceCharacter: NSObject , UITableViewDataSource {
    var arrString = ["a","b"]
    var viewController: ViewController?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrString.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = arrString[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arrString.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            viewController?.check = arrString.count == 0
        }
        else if editingStyle == .insert {
            
        }
    }
}
