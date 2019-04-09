//
//  ProjectModel.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 03/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class ProjectModel: NSObject {
    
    func getProjects() -> [Data] {
        
        //Create an empty array of Data Objects
        var Projectdata = [Data]()  //Orignal Video Object
        
        //Create a data object
        let data1 = Data()
        
        //Assign the project data properties
        data1.ProjectId = "1"
        data1.ProjectName = "The first project"
        data1.ProjectDescription = "Some random detail about the project here. This line is just to check if the content goes to the next line or just hides."
        data1.ProjectTeamLeader = "IC head office"
        data1.ProjectRequirements = "A, B, C, D"
        
        //Append it into the ProjectData array
        Projectdata.append(data1)
        Projectdata.append(data1)
        Projectdata.append(data1)
        Projectdata.append(data1)
        Projectdata.append(data1)
        
        //Return the array to the caller
        return Projectdata
    }
    
}
