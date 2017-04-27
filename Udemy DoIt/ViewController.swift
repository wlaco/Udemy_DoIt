//
//  ViewController.swift
//  Udemy DoIt
//
//  Created by Will Laco on 4/26/17.
//  Copyright © 2017 Will Laco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTask()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important == true {
            cell.textLabel?.text = "❗️ \(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
 
    func makeTask () -> [Task] {
        let task1 = Task()
        task1.name = "Walk the Dog"
        task1.important = false

        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = false

        let task3 = Task()
        task3.name = "Get milk"
        task3.important = true
        
        return [task1, task2, task3]
    
    }
    
}

