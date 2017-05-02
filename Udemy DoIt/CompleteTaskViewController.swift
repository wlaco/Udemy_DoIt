//
//  CompleteTaskViewController.swift
//  Udemy DoIt
//
//  Created by Will Laco on 5/1/17.
//  Copyright © 2017 Will Laco. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

   var previousVC = TasksViewController()
   
   var task = Task()
    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important == true {
            taskLabel.text = "\(task.name) ❗️"
        } else {
            taskLabel.text = task.name
        }
    }

    
    @IBAction func completeTapped(_ sender: UIButton) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    
    }
    
    
}
