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
    }
}
