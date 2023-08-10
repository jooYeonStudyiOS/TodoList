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
        
        insertListButton()
    }
    
    func insertListButton() {
        let button = UIBarButtonItem(title: "추가", style: .plain, target: self, action: #selector(insertLits))
        navigationItem.rightBarButtonItem = button
    }
    
    @objc func insertLits() {
        
        let alert = UIAlertController(title: "리스트 추가", message: "추가할 리스트를 작성해주세요", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        let insert = UIAlertAction(title: "추가", style: .default) {_ in
            if let title = alert.textFields?[0].text, !title.isEmpty {
                todoList.append(TodoList(isComplited: false, title: title, startDate: "3333-33-33", endDate: "4444-44-44", imageName: "추가 디테일"))
                //생각해 볼 것
                //1) 일단 이 함수를 써서 갱신시켜도 되는지?
                //2) viewDidLoad에서 메소드를 호출해도 되는지?
                self.todoListTableView.reloadData()
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(insert)
        

        alert.addTextField { (textFields) in
            textFields.keyboardType = .alphabet
        }
        
        present(alert, animated: false)
    }
}

extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoListTableView.dequeueReusableCell(withIdentifier: "TodoListTableCell", for: indexPath) as! TodoListTableCell
        cell.config(index: indexPath.row)
        
        return cell
    }
}
