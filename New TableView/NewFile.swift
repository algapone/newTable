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
        initProjectOne()
    }
    
    
    
    
    
    
    
    
    
    
    func initProjectOne() {
        // https://jsonplaceholder.typicode.com/
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users")
            else { return }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url) { (data, response, error)
            in
            
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            
            if let error = error {
                print("error")
            } else if let data = data {
                print(data)
                
//                let dataString = String(data: data, encoding: .utf8)
//                print(dataString)
            
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                    
                } catch let err {
                    print(err)
                }
                
            
            }
        }
        
        dataTask.resume()
        
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
