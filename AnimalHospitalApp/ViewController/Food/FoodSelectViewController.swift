//
//  FoodSelectViewController.swift
//  AnimalHospitalApp
//
//  Created by jun on 2020/10/25.
//

import UIKit

class FoodSelectViewController: UIViewController {
    @IBOutlet weak var foodCollectionView: UICollectionView!
    
    var foods: [Food] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = getDataFromJSON()
        foods = try! JSONDecoder().decode([Food].self, from: getDataFromJSON())
        
        
        
        self.setupNavigationBar()
        self.setupFoodCollectionView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.foodCollectionView.layoutIfNeeded()
    }
    
    
    func setupNavigationBar() {
        let title = "フード"
        self.navigationItem.title = title
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupFoodCollectionView() {
        self.foodCollectionView.alwaysBounceVertical = true
        self.foodCollectionView.delegate = self
        self.foodCollectionView.dataSource = self
    }
    
    private func getDataFromJSON() -> Data {
        if let path = Bundle.main.path(forResource: "food", ofType: "json") {
            return try! Data(contentsOf: URL(fileURLWithPath: path))
        } else {
            fatalError()
        }
    }
}

extension FoodSelectViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.foodCollectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as? FoodCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.inject(food: foods[indexPath.item])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
    }

}

extension FoodSelectViewController: UICollectionViewDelegateFlowLayout {
    // MARK: - FlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width / 2 - 8 - 4
        return CGSize(width: width, height: width + 65)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 4, left: 8, bottom: 24, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
