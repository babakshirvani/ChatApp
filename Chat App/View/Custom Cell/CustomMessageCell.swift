//
//  CustomMessageCell.swift
//  Chat App
//
//  Created by Babak Shirvani on 2019-05-05.
//  Copyright © 2019 Babak Shirvani. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell {
    
    
    @IBOutlet var messageBackground: UIView!
    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var messageBody: UILabel!
    @IBOutlet var senderUsername: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code goes here
        
        
        
    }
    
    
}
