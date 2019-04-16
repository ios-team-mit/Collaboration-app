//
//  LoginViewController.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 13/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var warning: UILabel!
    @IBOutlet weak var textFieldPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        warning.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        let username = textFieldUsername.text
        let password = textFieldPassword.text
        if credentials[username!] == password {
            performSegue(withIdentifier: "segueLogin", sender: nil)
            isLoggedIn = true
        }
        else {
            warning.isHidden = false
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
