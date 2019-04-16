//
//  SubmitProjectViewController.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 15/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class SubmitProjectViewController: UIViewController {

    @IBOutlet weak var ProjectName: UITextField!
    @IBOutlet weak var TeamLeaderName: UITextField!
    @IBOutlet weak var Description: UITextView!
    @IBOutlet weak var SkillsRequired: UITextView!
    @IBOutlet weak var ProjectDetailsSubmitted: UILabel!
    
    
    
    @IBAction func ontap(_ sender: Any) {
ProjectDetailsSubmitted.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Description!.layer.borderWidth = 1
        SkillsRequired!.layer.borderWidth = 1
        Description!.layer.borderColor = UIColor.lightGray.cgColor
        SkillsRequired!.layer.borderColor = UIColor.lightGray.cgColor
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
