//
//  TodoDetailViewController.swift
//  TodoList
//
//  Created by Jooyeon Kang on 2023/08/10.
//

import UIKit

class TodoDetailViewController: UIViewController {
    
    @IBOutlet weak var detailStackView: UIStackView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var deadlineDateLabel: UILabel!
    @IBOutlet weak var endDateLabel: UILabel!
    
    @IBOutlet weak var deadlineDateView: UIView!
    @IBOutlet weak var endDateView: UIView!
    
    @IBOutlet weak var modifyButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        config()
    }
    
    func config() {
        setupTitleLabel()
        setupStartDateLabel()
        setupDeadlineDateLabel()
        setupEndDateLabel()
        
        setupModifyButton()
        setupDeleteButton()
    }
    
    func setupTitleLabel() {
        titleLabel.text = todoList[index].title
        titleLabel.backgroundColor = .systemPurple
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        
        //한 줄 이상이 되면 그에 맞춰 동적으로 높이를 변경시켜줘야 하는 게 맞을 거 같은데...
        titleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setupStartDateLabel() {
        startDateLabel.text = todoList[index].startDate
        startDateLabel.textAlignment = .right
    }
    
    func setupDeadlineDateLabel() {
        if !todoList[index].isComplited {
            deadlineDateView.isHidden = false
            
            deadlineDateLabel.text = todoList[index].deadlineDate
            deadlineDateLabel.textAlignment = .right
            
            checkDeadlineDate()
        } else {
            deadlineDateView.isHidden = true
        }
        
    }
    
    func setupEndDateLabel() {
        if todoList[index].isComplited {
            endDateView.isHidden = false
            
            endDateLabel.text = todoList[index].endDate
            endDateLabel.textAlignment = .right
        } else {
            endDateView.isHidden = true
        }
    }
    
    func setupModifyButton() {
        modifyButton.backgroundColor = .systemOrange
        modifyButton.tintColor = .black
    }
    
    func setupDeleteButton() {
        deleteButton.backgroundColor = .systemYellow
        deleteButton.tintColor = .black
    }

    func checkDeadlineDate() {
        let today = Date()
        let deadlineDateString = todoList[index].deadlineDate
        
        let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "yyyy-MM-dd"
        
        guard let deadlineDate = dateFormatter.date(from: deadlineDateString) else { return }
        
        if today >= deadlineDate {
            deadlineDateLabel.textColor = .red
        }
    }
}
