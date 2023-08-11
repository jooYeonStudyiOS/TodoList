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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(identifier: "TodoDetailViewController") as? TodoDetailViewController else { return }
        
        detailVC.index = indexPath.row
        detailVC.delegate = self
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension TodoListViewController {
    
    func insertListButton() {
        let button = UIBarButtonItem(title: "추가", style: .plain, target: self, action: #selector(insertLits))
        navigationItem.rightBarButtonItem = button
    }
    
    @objc func insertLits() {
        
        let alert = UIAlertController(title: "리스트 추가", message: "추가할 리스트를 작성해주세요", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        let insert = UIAlertAction(title: "추가", style: .default) {_ in
            guard let title = alert.textFields?[0].text, !title.isEmpty else { return }
            guard let startDate = alert.textFields?[1].text, !startDate.isEmpty else { return }
            guard let deadlineDate = alert.textFields?[2].text, !deadlineDate.isEmpty else { return }
            
            //원래라면 image도 입력받아야 하지만 일단 패스..
            todoList.append(TodoList(isComplited: false,
                                     title: title,
                                     startDate: startDate,
                                     deadlineDate: deadlineDate,
                                     endDate: "",
                                     imageName: "cat"))
            
            //생각해 볼 것
            //1) 일단 이 함수를 써서 갱신시켜도 되는지?
            self.todoListTableView.reloadData()
        }
        
        alert.addAction(cancel)
        alert.addAction(insert)
        
        alert.addTextField { (textFields) in
            textFields.keyboardType = .alphabet
            textFields.placeholder = "제목"
        }
        
        alert.addTextField { (textFields) in
            textFields.keyboardType = .alphabet
            textFields.placeholder = "시작 날짜"
        }
        
        alert.addTextField { (textFields) in
            textFields.keyboardType = .alphabet
            textFields.placeholder = "종료 예정 날짜"
        }
        
        present(alert, animated: false)
    }
}

extension TodoListViewController: ReloadTableViewDelegate {
    
    func reloadTableView() {
        todoListTableView.reloadData()
    }
}

