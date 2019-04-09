//
//  ViewControllerForListOfProjects.swift
//  Collaboration app
//
//  Created by Deven Agarwal on 03/04/19.
//  Copyright © 2019 MIT. All rights reserved.
//

import UIKit

class ViewControllerForListOfProjects: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var ProjectData:[Data] = [Data]()
    var selectedProject: Data?
    
    let list = [0, 0, 0] //This is an array of project class that will be provided by the user. Every detail given by the user will come here and then displayed accordingly in the view.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.ProjectData = ProjectModel().getProjects()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProjectData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectsList", for: indexPath) as! ViewControllerTableViewCell
        
        cell.ProjectTitle.text? = ProjectData[indexPath.row].ProjectName
        cell.LeaderName.text? = ProjectData[indexPath.row].ProjectTeamLeader
        cell.Description.text? = ProjectData[indexPath.row].ProjectDescription
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Take note of which project user selected
        self.selectedProject = self.ProjectData[indexPath.row]
        
        //Call the Segue
        self.performSegue(withIdentifier: "goToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Get a reference to the destination view controller
        let detailsViewController = segue.destination as! ViewControllerForMoreDetails
        
        //Set the selected property of the destination view controller
        detailsViewController.selectedProject = self.selectedProject
    }

}
