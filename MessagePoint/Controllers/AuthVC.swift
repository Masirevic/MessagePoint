//
//  AuthVC.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/28/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC  = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func facebookSingInBtnWasPressed(_ sender: Any) {
        
    }
    
}
