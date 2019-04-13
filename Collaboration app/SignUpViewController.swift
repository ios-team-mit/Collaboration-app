//
//  SignUpViewController.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 13/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldConfirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var buttonSignUp: UIButton!
    
    @IBAction func onTap(_ sender: Any) {
        let email = textFieldEmail.text
        let password = textFieldPassword.text
        let confirmPassword = textFieldConfirmPassword.text
        if email == "" {
            
        }
        else if !(password == confirmPassword) {
            
        }
        else {
            credentials[email!] = password
            performSegue(withIdentifier: "segueSignUp", sender: nil)
        }
    }
    

}
