//
//  FoodSelectViewController.swift
//  AnimalHospitalApp
//
//  Created by jun on 2020/10/25.
//

import UIKit

class FoodSelectViewController: UIViewController {
    @IBOutlet weak var foodCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupNavigationBar()
        self.setupFoodCollectionView()
    }
    
    
    func setupNavigationBar() {
        let title = "フード"
        self.navigationItem.title = title
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    func setupFoodCollectionView() {
        self.foodCollectionView.alwaysBounceVertical = true
        self.foodCollectionView.delegate = self
        self.foodCollectionView.dataSource = self
    }
}

