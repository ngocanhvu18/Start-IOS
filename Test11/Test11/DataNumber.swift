//
//  DataNumber.swift
//  Test11
//
//  Created by Admin on 3/25/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class DataSourceNumber : NSObject , UITableViewDataSource {
    var arr = Array(1...2)
    var viewController: ViewController?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(arr[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            viewController?.check = arr.count == 0
        }
        else if editingStyle == .insert {
            
        }
    }
}
