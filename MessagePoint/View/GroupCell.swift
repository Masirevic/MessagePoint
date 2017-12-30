//
//  GroupCell.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/30/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    
    func configureCell (title: String, description: String, members: Int) {
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.memberCountLbl.text = "\(members) members"
    }
    
    
    
}
