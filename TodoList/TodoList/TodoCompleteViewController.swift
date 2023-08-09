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
