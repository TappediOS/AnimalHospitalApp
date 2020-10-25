//
//  FoodCollectionViewCell.swift
//  AnimalHospitalApp
//
//  Created by jun on 2020/10/25.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupCell()
        self.setupFoodImageView()
        self.setupTitleLabel()
        self.setupPriceLabel()
    }
    
    func setupCell() {
        self.backgroundColor = .systemBackground
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = false
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.15 //影の色の透明度
        self.layer.shadowRadius = 4.8 //影のぼかし
        self.layer.shadowOffset = CGSize(width: 1, height: 1) //影の方向　width、heightを負の値にすると上の方に影が表示される
    }
    
    func setupFoodImageView() {
        
        self.foodImageView.layer.cornerRadius = 8
        self.foodImageView.layer.masksToBounds = true
    }
    
    func setupTitleLabel() {
        self.titleLabel.adjustsFontSizeToFitWidth = true
        self.titleLabel.minimumScaleFactor = 0.4
    }
    
    func setupPriceLabel() {
        self.priceLabel.adjustsFontSizeToFitWidth = true
        self.priceLabel.minimumScaleFactor = 0.4
    }
    
    func inject(food: Food) {
        self.titleLabel.text = food.name
        self.priceLabel.text = "PRICE: ¥" + String(food.price)
        
        let image = UIImage(named: food.imageName)
        self.foodImageView.image = image
    }
}
