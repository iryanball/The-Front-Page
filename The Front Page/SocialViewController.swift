//
//  SocialViewController.swift
//  The Front Page
//
//  Created by Ryan Ball on 09/08/2016.
//  Copyright © 2016 Ryan Ball. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class SocialViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
    }
    
    @IBAction func signInTapped(_ sender: AnyObject) {
        performSegue(withIdentifier: "goToCheckIn", sender: nil)
    }

}
