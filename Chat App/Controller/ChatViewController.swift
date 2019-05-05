//
//  ChatViewController.swift
//  Chat App
//
//  Created by Babak Shirvani on 2019-05-05.
//  Copyright © 2019 Babak Shirvani. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // variables
    
    

    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTextfield: UITextField!
    @IBOutlet var messageTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //delegate and datasource:
        
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        
        //delegate of the text field:
        
        
        
        //the tapGesture:
        
        
        
        //Register  MessageCell.xib:
        
        messageTableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        
        
        
        
        configureTableView()
        
    }
    
    ///////////////////////////////////////////
    
    //MARK: - TableView DataSource Methods
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        
        let messageArray = ["First Message", "Second Message", "Third Message"]
        cell.messageBody.text = messageArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    
    
    
    func configureTableView () {
        

        
        messageTableView.rowHeight = UITableView.automaticDimension
        messageTableView.estimatedRowHeight = 120.0
        
    }
    

    
    
    ///////////////////////////////////////////
    
    //MARK:- TextField Delegate Methods
    
    
    
    
    
    
    
    
    ///////////////////////////////////////////
    
    
    //MARK: - Send & Recieve from Firebase
    
    
    
    
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        
        
        //Send the message to Firebase and save it in our database
        
        
    }
    
    //retrieveMessages method
    
    
    
    
    
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
        
        do {
            try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
            
        } catch {
            print("error: there was a problem loggin out")
        }

        
        
    }
    
    
    
}

