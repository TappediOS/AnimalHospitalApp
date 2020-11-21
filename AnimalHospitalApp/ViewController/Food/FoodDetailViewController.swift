//
//  FoodDetailViewController.swift
//  AnimalHospitalApp
//
//  Created by jun on 2020/10/25.
//

import UIKit

class FoodDetailViewController: UIViewController {
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var exLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var subExLabel: UILabel!
    
    @IBOutlet weak var purchaseView: UIView!
    @IBOutlet weak var purchaseButton: UIButton!
    var food: Food?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = food?.name
        self.navigationItem.largeTitleDisplayMode = .always
        
        self.titleLabel.text = food?.name
        self.priceLabel.text = "PRICE: ¥" + String(food!.price)
        self.foodImageView.image = UIImage(named: food?.imageName ?? "")
        
        self.subExLabel.sizeToFit()
        
        
        self.purchaseView.layer.masksToBounds = false
        
        self.purchaseView.layer.shadowColor = UIColor.black.cgColor
        self.purchaseView.layer.shadowOpacity = 0.2
        self.purchaseView.layer.shadowRadius = 4.6
        self.purchaseView.layer.shadowOffset = CGSize(width: -1.1, height: -1.1)
        
        purchaseButton.layer.cornerRadius = 8
        
    }
    
    func setFood(food: Food) {
        self.food = food
    }
}

