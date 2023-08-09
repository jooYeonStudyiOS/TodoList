//
//  TodoCompleteCollectionCell.swift
//  TodoList
//
//  Created by Jooyeon Kang on 2023/08/09.
//

import UIKit

class TodoCompleteCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var endDateLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
   
    func config(index: Int) {
        titleLabel.text = todoList[index].title
        startDateLabel.text = todoList[index].startDate
        endDateLabel.text = todoList[index].endDate
        detailLabel.text = todoList[index].detail
    }
}
