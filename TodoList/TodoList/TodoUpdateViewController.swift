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
        titleTextField.isEnabled = true
    }
    
    @IBAction func startDateUpdateButton(_ sender: Any) {
        setupStartDatePicker()
    }
    
    @IBAction func deadlineDateUpdateButton(_ sender: Any) {
        setupDeadlineDatePicker()
    }
    
    @IBAction func updateButton(_ sender: Any) {
        todoList[index].startDate = newStartDate
        todoList[index].deadlineDate = newDeadlineDate
        
        navigationController?.popViewController(animated: false)
    }
    
    var index: Int = 0
    var newTitle: String = ""
    var newStartDate: String = ""
    var newDeadlineDate: String = ""
    var formatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.dateFormat = "yyyy-MM-dd"
        
        config()
    }
    
    func config() {
        titleTextField.text = todoList[index].title
        titleTextField.isEnabled = false
        
        startDateLabel.text = todoList[index].startDate
        
        deadlineDateLabel.text = todoList[index].deadlineDate
    }
    
    func setupStartDatePicker() {
        //y 포지션 값을 조금 더 ..잘 구하는 방법이 없을까
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 250, width: view.frame.width, height: 200))
        datePicker.backgroundColor = .white
        datePicker.datePickerMode = .date
    
        guard let startDate = formatter.date(from: todoList[index].startDate) else { return }
        datePicker.setDate(startDate, animated: false)
        
        datePicker.addTarget(self, action: #selector(onDidChangeStartDate(sender:)), for: .valueChanged)
        
        view.addSubview(datePicker)
    }
    
    func setupDeadlineDatePicker() {
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 350, width: view.frame.width, height: 200))
        datePicker.backgroundColor = .white
        datePicker.datePickerMode = .date
    
        guard let deadlineDate = formatter.date(from: todoList[index].deadlineDate) else { return }
        datePicker.setDate(deadlineDate, animated: false)
        
        datePicker.addTarget(self, action: #selector(onDidChangeDeadlineDate(sender:)), for: .valueChanged)
        
        view.addSubview(datePicker)
    }
    
    @objc func onDidChangeStartDate(sender: UIDatePicker) {
        let selectedDate: String = formatter.string(from: sender.date)
        startDateLabel.text = selectedDate
        
        newStartDate = selectedDate
        
        dismiss(animated: false)
        sender.isHidden = true
    }
    
    @objc func onDidChangeDeadlineDate(sender: UIDatePicker) {
        let selectedDate: String = formatter.string(from: sender.date)
        deadlineDateLabel.text = selectedDate
        
        newDeadlineDate = selectedDate
        
        dismiss(animated: false)
        sender.isHidden = true
    }
}
