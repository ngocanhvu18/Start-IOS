//
//  TableViewController.swift
//  search
//
//  Created by Apple on 10/29/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    var searchActive : Bool = true
    var data = ["San Francisco","New York","San Jose","Chicago","Los Angeles","Austin","Seattle"]
    var filtered:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup delegates
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
    }
//        func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//            searchActive = false;
//        }
//
//        func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//            searchActive = false ;
//        }
//
//        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//            searchActive = false;
//        }
//
//        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//            searchActive = false;
//        }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtered = data.filter({ (text) -> Bool in
            let tmp: NSString = text as NSString
            let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            return range.location != NSNotFound
        })
        
        if(filtered.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.tableView.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchActive){
        // #warning Incomplete implementation, return the number of rows
        return filtered.count
        }
        return data.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        if(searchActive){
            cell.textLabel?.text = filtered[indexPath.row]
        } else {
            cell.textLabel?.text = data[indexPath.row];
        }
        
        return cell;
    }
}
