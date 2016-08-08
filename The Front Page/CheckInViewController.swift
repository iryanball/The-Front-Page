//
//  CheckInViewController.swift
//  The Front Page
//
//  Created by Ryan Ball on 07/08/2016.
//  Copyright © 2016 Ryan Ball. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class CheckInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func topTenTapped(_ sender: AnyObject) {
        
        
        
    }

    @IBAction func signOutTapped(_ sender: AnyObject) {
       let keychainResult = KeychainWrapper.removeObjectForKey(KEY_UID)
        print("ID removed from keychain \(keychainResult)")
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }

}
