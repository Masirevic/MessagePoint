//
//  FeedCell.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/29/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    
    func configureCell (profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
    
    
    
}
