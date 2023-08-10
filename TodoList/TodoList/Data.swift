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
    var deadlineDate: String
    var endDate: String
    var imageName: String
}

var todoList: [TodoList] = [

    //예정일 내 완료
    TodoList(isComplited: true,
             title: "UILabel 공부하기",
             startDate: "2023-01-01",
             deadlineDate: "2023-01-11",
             endDate: "2023-01-10",
             imageName: "cat"),
    
    //예정일에 완료
    TodoList(isComplited: true,
             title: "UIButton 공부하기",
             startDate: "2023-02-01",
             deadlineDate: "2023-02-11",
             endDate: "2023-02-11",
             imageName: "catcat22"),
    
    //예정일 지나서 완료
    TodoList(isComplited: true,
             title: "UISwitch 공부하기",
             startDate: "2023-03-01",
             deadlineDate: "2023-03-11",
             endDate: "2023-03-12",
             imageName: "cat_day"),
    
    //미완료 , 예정일 지남
    TodoList(isComplited: false,
             title: "UINavgation 공부하기",
             startDate: "2023-04-01",
             deadlineDate: "2023-04-11",
             endDate: "",
             imageName: "cat"),
    
    //미완료 , 예정일 지남 & 긴 제목 테스트
    TodoList(isComplited: false,
             title: "UITableViewl, UITableViewController 공부하기 열심히 공부하기 또 공부하기 마지막",
             startDate: "2023-05-01",
             deadlineDate: "2023-05-11",
             endDate: "",
             imageName: "cat"),
    
    //미완료 , 오늘이 예정일
    TodoList(isComplited: false,
             title: "UITableCell 공부하기",
             startDate: "2023-08-01",
             deadlineDate: "2023-08-11",
             endDate: "",
             imageName: "cat"),
    
    //미완료 , 예정일 안 지남
    TodoList(isComplited: false,
             title: "투두리스트 라벨 짤릴 때 어떻게 할지",
             startDate: "2023-08-01",
             deadlineDate: "2023-09-11",
             endDate: "",
             imageName: "cat")
