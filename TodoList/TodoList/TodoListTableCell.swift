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
    
    @IBAction func changeStyle(_ sender: UISwitch) {
        changeStyle(isOn: sender.isOn)
    }
    
    
    func config(index: Int) {
        
        titleLabel.text = todoList[index].title
        complitedSwitch.isOn = todoList[index].isComplited
        
        changeStyle(isOn: todoList[index].isComplited)
    }
    
    func changeStyle(isOn: Bool) {
        if !isOn {
            contentView.backgroundColor = .white
            titleLabel.textColor = .black
        } else {
            contentView.backgroundColor = .lightGray
            titleLabel.textColor = .darkGray
        }
    }
}
