//
//  ViewControllerTableViewCell.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 03/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var ProjectTitle: UILabel!
    @IBOutlet weak var LeaderName: UILabel!
    @IBOutlet weak var Description: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
