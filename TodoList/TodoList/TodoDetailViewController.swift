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
    @IBOutlet weak var endDateLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        config()
    }
    
    func config() {
        setupTitleLabel()
        setupStartDateLabel()
        setupEndDateLabel()
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
    
    func setupEndDateLabel() {
        endDateLabel.text = todoList[index].endDate
        endDateLabel.textAlignment = .right
        
        if !todoList[index].isComplited { checkEndDate() }
    }
    
    func checkEndDate() {
        let date = Date()
        let endDateString = todoList[index].endDate
        
        let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "yyyy-MM-dd"
        
        guard let endDate = dateFormatter.date(from: endDateString) else { return }

        endDateLabel.textColor = date.compare(endDate) == .orderedDescending ? .red : .black
        endDateLabel.text = "서두르세요! 얼마 안 남았습니다! \t \(endDateString)"
    }
}
