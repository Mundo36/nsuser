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
    var assignments: Array<Dictionary<String, String>>?
    
    let userDefaults = UserDefaults.standard
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        loadData()
      
       
    }
   
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return assignments!.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        userDefaults.set(assignments , forKey: "classes")
        
        
        
        //let value  = userDefaults.string(forKey: "classes")

        
        cell.textLabel?.text = assignments?[indexPath.row].keys
        cell.detailTextLabel?.text = assignments?[indexPath.row].values
        
        
        
       
        
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
                
                
                self.userDefaults.set( self.assignments , forKey: "classes")
                
                
                
                let value  = self.userDefaults.string(forKey: "classes")

    

                self.assignments["classes"] = "\(textField.text!)"
    
    
    
    
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
        userDefaults.set( assignments , forKey: "classes")
        
       
        
        let value  = userDefaults.string(forKey: "classes")
        print(value)
    }
    
    func loadData()
    {
        let userDefaults = UserDefaults.standard
        userDefaults.set( assignments , forKey: "classes")
        
        
        
        
    }
   
   
    
    
}

