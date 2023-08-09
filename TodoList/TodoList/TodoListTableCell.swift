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
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
