//
//  Data.swift
//  TodoList
//
//  Created by Jooyeon Kang on 2023/08/09.
//

import Foundation

struct TodoList {
    var isComplited: Bool
    var title: String
    var startDate: String
    var endDate: String
    var detail: String
}

var todoList: [TodoList] = [
    TodoList(isComplited: true, title: "UILabel 공부하기", startDate: "0000-00-00", endDate: "1111-11-11", detail: "상세 설명"),
    TodoList(isComplited: false, title: "UIButton 공부하기", startDate: "0000-00-00", endDate: "1111-11-11", detail: "상세 설명"),
    TodoList(isComplited: false, title: "UISwitch 공부하기", startDate: "0000-00-00", endDate: "1111-11-11", detail: "상세 설명"),
    TodoList(isComplited: false, title: "UINavgation 공부하기", startDate: "0000-00-00", endDate: "1111-11-11", detail: "상세 설명"),
    TodoList(isComplited: false, title: "UITableViewl, UITableViewController 공부하기", startDate: "0000-00-00", endDate: "1111-11-11", detail: "상세 설명"),
    TodoList(isComplited: false, title: "UITableCell 공부하기", startDate: "0000-00-00", endDate: "1111-11-11", detail: "상세 설명"),
    TodoList(isComplited: false, title: "투두리스트 라벨 짤릴 때 어떻게 할지", startDate: "0000-00-00", endDate: "1111-11-11", detail: "상세 설명")
]

