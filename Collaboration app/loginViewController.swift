//
//  LoginViewController.swift
//  Collaboration app
//
//  Created by student on 30/03/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var viewImage: UIImageView!
    var email, password

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var buttonforgotPassword: UIButton!
    @IBOutlet weak var buttonNewUser: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonLoginIsClicked(_ sender: Any) {
        email = textFieldEmail.text
        password = textFieldPassword.text
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] user, error in
            guard let strongSelf = self else { return }
            // ...
        }


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
