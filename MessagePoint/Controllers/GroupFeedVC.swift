//
//  GroupFeedVC.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/31/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class GroupFeedVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendBtnView.bindToKeboard()
       
    }
    
    
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    
    
    
   
}
