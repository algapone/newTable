//
//  TableViewController.swift
//  New TableView
//
//  Created by Dmitry Gaponenko on 11.12.2019.
//  Copyright © 2019 Dmitry Gaponenko. All rights reserved.
//

import UIKit

class NewFile: UITableViewController {

    let interConnect = ["Daria", "Dmitry", "Danutya", "Oksana", "Tatyana", "Aleksandr", "Anatolya"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Testprint")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interConnect.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let guest = interConnect[indexPath.row]
        
        cell.textLabel?.text = guest
        
        return cell
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
