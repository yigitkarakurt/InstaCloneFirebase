//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Yiğit Karakurt on 14.11.2022.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var accountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        accountLabel.text = "Account : \(Auth.auth().currentUser!.email!)"
        
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        }catch{
            print("Error!")
        }
    }
    

}
