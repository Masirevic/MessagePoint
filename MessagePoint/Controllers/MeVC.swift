//
//  MeVC.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/28/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit
import Firebase

class MeVC: UIViewController {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         self.emailLbl.text = Auth.auth().currentUser?.email
    }

    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        let logoutPopup = UIAlertController (title: "Logout?", message: "Are you sure you want to logout?", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        let logoutAction = UIAlertAction(title: "Logout", style: .destructive) { (buttonTapped) in
            do {
            try Auth.auth().signOut()
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC") as? AuthVC
                self.present(authVC!, animated: true, completion: nil)
            } catch {
                print(error)
            }
        }
        logoutPopup.addAction(logoutAction)
        logoutPopup.addAction(cancel)
        present(logoutPopup, animated: true, completion: nil)
        
    }
    
}
