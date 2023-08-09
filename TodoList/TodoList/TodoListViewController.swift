//
//  TodoListViewController.swift
//  TodoList
//
//  Created by Jooyeon Kang on 2023/08/09.
//

import UIKit

class TodoListViewController: UIViewController {
    
    @IBOutlet weak var todoListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoListTableView.dataSource = self
        todoListTableView.delegate = self
    }
}

extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoListTableView.dequeueReusableCell(withIdentifier: "TodoListTableCell", for: indexPath) as! TodoListTableCell
        cell.titleLabel.text = "test"
        cell.complitedSwitch.isOn = false
        
        return cell
    }
}


