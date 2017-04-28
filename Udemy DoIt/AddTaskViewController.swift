//
//  AddTaskViewController.swift
//  Udemy DoIt
//
//  Created by Will Laco on 4/26/17.
//  Copyright © 2017 Will Laco. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let newTask = Task()
        newTask.name = taskNameTextField.text!
        newTask.important = importantSwitch.isOn
        
        previousVC.tasks.append(newTask)
        previousVC.tableView.reloadData()
        
        navigationController!.popViewController(animated: true)
    }

    
    
}
