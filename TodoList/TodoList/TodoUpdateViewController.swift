//
//  TodoModifyViewController.swift
//  TodoList
//
//  Created by Jooyeon Kang on 2023/08/11.
//

import UIKit

class TodoUpdateViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var deadlineDateLabel: UILabel!
    
    @IBAction func titleUpdateButton(_ sender: Any) {
    }
    
    @IBAction func startDateUpdateButton(_ sender: Any) {
    }
    
    @IBAction func deadlineDateUpdateButton(_ sender: Any) {
    }
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        config()
    }
    
    func config() {
        titleTextField.text = todoList[index].title

        
        startDateLabel.text = todoList[index].startDate
        deadlineDateLabel.text = todoList[index].deadlineDate
    }
}
