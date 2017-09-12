//
//  addFile.swift
//  nsuser
//
//  Created by apcs2 on 9/7/17.
//  Copyright © 2017 apcs2. All rights reserved.
//

import UIKit

class addClass: UIViewController
{
    
    @IBAction func addBttn(_ sender: Any)
    {
      
        userData = true
        UserDefaults.standard.set(userData , forKey: "userData")
        
        if textField.text == ""
        {
            textField.backgroundColor = UIColor.red
            
        }
        else {
            textField.backgroundColor = UIColor.white
            assignments.append(textField.text!)
            
            UserDefaults.standard.set(assignments, forKey: "classes")
        }
        
    }
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
       
    }
    
  
    //func saveAssignments()
    //{
    //let defaults = UserDefaults.standard
    //defaults.set(assignments, forKey: "Assignments")
    //}
    
    
}
