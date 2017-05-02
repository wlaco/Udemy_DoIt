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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let newTask = Task(context: context)
        
        newTask.name = taskNameTextField.text!
        newTask.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back

        navigationController!.popViewController(animated: true)
    }

    
    
}
