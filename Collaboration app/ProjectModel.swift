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
        let data2 = Data()
        let data3 = Data()
        let data4 = Data()
        
        //Assign the project data properties
        data1.ProjectId = "1"
        data1.ProjectName = "Kool Meenu"
        data1.ProjectDescription = "A  mini portable cooling appliance which can be used by street vendors to keep their food products(especially fishes) cool and fresh for longer duration of time."
        data1.ProjectTeamLeader = "Abhinav Kumar Singh"
        data1.ProjectRequirements = "A, B, C, D"
        
        data2.ProjectId = "2"
        data2.ProjectName = "Weather Station"
        data2.ProjectDescription = "Localized weather forecasting station for Manipal."
        data2.ProjectTeamLeader = "Saurabh Parikh"
        data2.ProjectRequirements = "A, B, C, D"
        
        data3.ProjectId = "3"
        data3.ProjectName = "KrishiBot"
        data3.ProjectDescription = "A small agriculture robot for precision farming."
        data3.ProjectTeamLeader = "Vaibhav Thacker"
        data3.ProjectRequirements = "A, B, C, D"
        
        
        data4.ProjectId = "4"
        data4.ProjectName = "Dental Radiograph Scanning Machine"
        data4.ProjectDescription = "Scanning the dental X-rays in a standardized form to get a clear picture and better understanding of the problem."
        data4.ProjectTeamLeader = "Atishay Jain"
        data4.ProjectRequirements = "A, B, C, D"
        
        
        //Append it into the ProjectData array
        Projectdata.append(data1)
        Projectdata.append(data2)
        Projectdata.append(data3)
        Projectdata.append(data4)
        
        //Return the array to the caller
        return Projectdata
    }
    
}
