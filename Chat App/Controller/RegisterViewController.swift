//
//  RegisterViewController.swift
//  Chat App
//
//  Created by Babak Shirvani on 2019-05-05.
//  Copyright © 2019 Babak Shirvani. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    
    //Pre-linked IBOutlets
    
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func registerPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        
        //Set up a new user on Firbase database
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                SVProgressHUD.dismiss()
                //success
                print("Registration Successful!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        
        
        
    }
    
    
}
