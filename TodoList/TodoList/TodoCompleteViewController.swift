//
//  TodoCompleteViewController.swift
//  TodoList
//
//  Created by Jooyeon Kang on 2023/08/09.
//

import UIKit

class TodoCompleteViewController: UIViewController {
    
    @IBOutlet weak var completedCollectionView: UICollectionView!
    
    var complitedList: [TodoList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        completedCollectionView.dataSource = self
        completedCollectionView.delegate = self
        
        complitedList = todoList.filter( { $0.isComplited == true } )
    }
}

extension TodoCompleteViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return complitedList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TodoCompleteCollectionCell", for: indexPath) as! TodoCompleteCollectionCell
        cell.config(index: indexPath.row)
        return cell
    }
}

//다이나믹 높이 설정
//1행에 한 개만 나오도록 설정
//이미지뷰? 도 넣어보기?

extension TodoCompleteViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: completedCollectionView.bounds.width, height: 150)
    }
}
