//
//  ForgotPasswordViewController.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 13/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var warning: UILabel!
    @IBOutlet weak var textFieldAnswer: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var passwordReset: UILabel!
    @IBOutlet weak var buttonSubmit: UIButton!
    var answer = String()
    var email = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        email = textFieldEmail.text!
        answer = textFieldAnswer.text!
        if credentials[email] != nil {
            if answer == "DPS" {
                passwordReset.text = "Password reset, check your email"
                passwordReset.textColor = UIColor.black
                passwordReset.isHidden = false
            }
            else {
                warning.isHidden = true
                passwordReset.text = "Wrong Answer"
                passwordReset.textColor = UIColor.red
                passwordReset.isHidden = false
            }
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
