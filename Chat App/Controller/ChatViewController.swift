//
//  ChatViewController.swift
//  Chat App
//
//  Created by Babak Shirvani on 2019-05-05.
//  Copyright © 2019 Babak Shirvani. All rights reserved.
//

import UIKit


class ChatViewController: UIViewController {
    
    // variables
    
    

    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTextfield: UITextField!
    @IBOutlet var messageTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //delegate and datasource:
        
        
        
        //delegate of the text field:
        
        
        
        //the tapGesture:
        
        
        
        //Register  MessageCell.xib:
        
        
    }
    
    ///////////////////////////////////////////
    
    //MARK: - TableView DataSource Methods
    
    
    
    
    
    
    ///////////////////////////////////////////
    
    //MARK:- TextField Delegate Methods
    
    
    
    
    
    
    
    
    ///////////////////////////////////////////
    
    
    //MARK: - Send & Recieve from Firebase
    
    
    
    
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        
        
        //Send the message to Firebase and save it in our database
        
        
    }
    
    //retrieveMessages method
    
    
    
    
    
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
        

        
        
    }
    
    
    
}

