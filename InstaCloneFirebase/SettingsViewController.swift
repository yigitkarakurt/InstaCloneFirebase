//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Yiğit Karakurt on 14.11.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toViewController", sender: nil)
        
    }
    

}
