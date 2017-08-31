//
//  ViewController.swift
//  nsuser
//
//  Created by apcs2 on 8/30/17.
//  Copyright © 2017 apcs2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var tableView: UITableView!
    var assignments = [""]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        assignments.append("Homework")
        
        let userDefaults = UserDefaults.standard
        userDefaults.set( "String", forKey: "Key")
        
        //To retrieve from the key
        
        let value  = userDefaults.string(forKey: "Key")
        print(value)
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return assignments.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }

}

