//
//  ViewController.swift
//  Collaboration app
//
//  Created by student on 28/03/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginTapped(_ sender: Any) {
        isLoggedIn = true
    }
    
}

