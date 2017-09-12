//
//  ViewController.swift
//  nsuser
//
//  Created by apcs2 on 8/30/17.
//  Copyright © 2017 apcs2. All rights reserved.
//

import UIKit

var assignments = [String]()

var userData = false

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
   
    @IBOutlet weak var tableView: UITableView!
    
    
    let userDefaults = UserDefaults.standard
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return assignments.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        userDefaults.set(assignments , forKey: "classes")
        
        
        
        //let value  = userDefaults.string(forKey: "classes")
        
        
        cell.textLabel?.text = assignments[indexPath.row]
        cell.detailTextLabel?.text = assignments[indexPath.row]
        
        
        
        
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            assignments.remove(at: indexPath.row)
            UserDefaults.standard.set(assignments, forKey: "classes")
        }
        tableView.reloadData()
    }
    
    
    override func viewDidAppear(_ animated: Bool)
    {
        tableView.reloadData()
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        userData = UserDefaults.standard.bool(forKey: "userData")
        
        
        if userData == true
        {
            assignments = UserDefaults.standard.object(forKey: "classes") as! [String]
            
            
        }
        else
        {
            assignments.append("NO USER DATA")
            UserDefaults.standard.object(forKey: "classes")
            
            if assignments[0] == "NO USER DATA"
            {
                assignments.remove(at: 0)
                UserDefaults.standard.object(forKey: "classes")
            }
        }
        
       
      tableView.reloadData()
       
    }
   
    
    
    
   
    
    


    
    
    
    func saveData()
    {
        let userDefaults = UserDefaults.standard
        userDefaults.set(assignments , forKey: "classes")
        
       
        
        let value  = userDefaults.string(forKey: "classes")
        print(value)
    }
    
    func loadData()
    {
        let userDefaults = UserDefaults.standard
        userDefaults.set( assignments , forKey: "classes")
        
        
        
        
    }
    
    
    

   
    
    
}

