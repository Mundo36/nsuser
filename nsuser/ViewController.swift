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
        assignments.append("Enter Classes Below")
        loadData()
      
       
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return assignments.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = assignments[indexPath.row]
        
        return cell
    }

    
    @IBAction func addButton(_ sender: Any)
    {
        let imagePickerController = UIImagePickerController()
        
        
        
        
        
        let alert = UIAlertController(title: "New Activity", message: "Enter The Following", preferredStyle: .alert)
        
        
        
        alert.addTextField(configurationHandler: { (textField) -> Void in
            
            
            
            textField.placeholder = "Date (MM/DD/YY)"
            
            
            
        })
        
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action:UIAlertAction) in
            
            
            
            
            
        }))
        
        
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { [weak alert] (action) -> Void in
            
            
            
            
            
            let textField = (alert?.textFields![0])! as UITextField
            
            
            
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            
            
            
            self.assignments.append(textField.text!)
            
            
            
            
            print("Text field: \(textField.text)")
            
            self.tableView.reloadData()
            
            self.saveData()
            
            self.loadData()
            
        }))
        
        
        
        
        
        // 4. Present the alert.
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func saveData()
    {
        let userDefaults = UserDefaults.standard
        userDefaults.set( "String", forKey: "Key")
        
        //To retrieve from the key
        
        let value  = userDefaults.string(forKey: "Key")
        print(value)
    }
    
    func loadData()
    {
        let userDefaults = UserDefaults.standard
        userDefaults.set( "String", forKey: "Key")
        
        
        
        
    }
   
   
    
    
}

