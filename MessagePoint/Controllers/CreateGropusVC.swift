//
//  CreateGropusVC.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/30/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class CreateGropusVC: UIViewController {
    
    
    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailSearchTextField: InsetTextField!
    @IBOutlet weak var groupMemberLbl: UILabel!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        
    }

   
    
    @IBAction func doneBtnWasPressed(_ sender: Any) {
        
    }
    
    
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        
    }
    

}



extension CreateGropusVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as? UserCell else { return UITableViewCell () }
        let profileImage = UIImage(named: "defaultProfileImage")
        cell.configureCell(profileImage: profileImage!, email: "ljuba@ljuba.com", isSelected: true)
        return cell
    }
    
}

