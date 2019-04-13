//
//  ViewControllerForMoreDetails.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 09/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit


class ViewControllerForMoreDetails: UIViewController {

    @IBOutlet weak var ProjectTitle: UILabel!
    @IBOutlet weak var LeaderName: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var Requirements: UILabel!
    
    var selectedProject: Data?
    
    
    @IBOutlet weak var ApplyButton: UIButton!
    
    
    
    @IBAction func onTapApply(_ sender: Any) {
        
        if isLoggedIn {
            print("Email to the team Lead")
            let email = "yashika.badaya22@zapakmail.com"
            if let url = URL(string: "mailto:\(email)") {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        }
        else {
            performSegue(withIdentifier: "segueNotLogin", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if let dat = self.selectedProject {
            self.ProjectTitle.text = dat.ProjectName
            self.LeaderName.text = dat.ProjectTeamLeader
            self.Description.text = dat.ProjectDescription
            self.Requirements.text = dat.ProjectRequirements
        }
        
        
    }

}
