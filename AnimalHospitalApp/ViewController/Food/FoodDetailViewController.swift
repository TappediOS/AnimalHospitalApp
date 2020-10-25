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
    
    var food: Food?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = food?.name
        self.navigationItem.largeTitleDisplayMode = .always
        
        self.titleLabel.text = food?.name
        self.priceLabel.text = "PRICE: ¥" + String(food!.price)
        self.foodImageView.image = UIImage(named: food?.imageName ?? "")
        
        self.subExLabel.sizeToFit()
        
    }
    
    func setFood(food: Food) {
        self.food = food
    }
}

