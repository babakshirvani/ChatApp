//
//  LogInViewController.swift
//  Chat App
//
//  Created by Babak Shirvani on 2019-05-05.
//  Copyright © 2019 Babak Shirvani. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                //success
                print("log in Successful!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        
        
        
        
    }
    
    
    
    
}
