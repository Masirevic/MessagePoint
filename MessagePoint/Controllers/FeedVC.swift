//
//  FirstViewController.swift
//  MessagePoint
//
//  Created by Ljubomir on 12/27/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {
    
    var messeageArray = [Message]()
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DataService.instance.getAllFeedMessages { (returnedMessagesArray) in
            self.messeageArray = returnedMessagesArray.reversed()
            self.tableView.reloadData()
        }
    }

}


extension FeedVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messeageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell", for: indexPath) as? FeedCell else {return UITableViewCell()}
        let image = UIImage(named: "defaultProfileImage")
        let message = messeageArray[indexPath.row]
        DataService.instance.getUsername(forUID: message.senderId) { (returnedUsername) in
             cell.configureCell(profileImage: image!, email: returnedUsername, content: message.content)
        }
       
        return cell
        
    }
    
    
}






