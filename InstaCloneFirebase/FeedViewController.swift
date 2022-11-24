//
//  FeedViewController.swift
//  InstaCloneFirebase
//
//  Created by Yiğit Karakurt on 14.11.2022.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.commentLabel.text = "love you!"
        cell.likeLabel.text = "4"
        cell.userEmailLabel.text = "yigitkarakurt@gmail.com"
        cell.userImageView.image = UIImage(named: "4797305-200.jpg")
        return cell
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10

    }

}
