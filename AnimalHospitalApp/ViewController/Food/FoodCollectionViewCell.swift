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
        self.layer.masksToBounds = true
    }
    
    func setupFoodImageView() {
        self.foodImageView.layer.borderWidth = 0.25
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
}
