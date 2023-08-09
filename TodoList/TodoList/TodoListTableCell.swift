//
//  TodoListTableCell.swift
//  TodoList
//
//  Created by Jooyeon Kang on 2023/08/09.
//

import UIKit

class TodoListTableCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var complitedSwitch: UISwitch!
    
    func config(index: Int) {
        
        titleLabel.text = todoList[index].title
        complitedSwitch.isOn = todoList[index].isComplited
        
        if !complitedSwitch.isOn {
            contentView.backgroundColor = .white
            titleLabel.textColor = .black
        } else {
            contentView.backgroundColor = .lightGray
            titleLabel.textColor = .darkGray
        }
    }
}
