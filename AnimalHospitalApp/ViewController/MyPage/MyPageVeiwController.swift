//
//  MyPageVeiwController.swift
//  AnimalHospitalApp
//
//  Created by jun on 2020/10/25.
//

import UIKit

class MyPageVeiwController: UIViewController {
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var qrImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "マイページ"
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        scrollView.alwaysBounceVertical = true
        
        cardImageView.image = UIImage(named: "card")
        cardImageView.layer.cornerRadius = 8
        cardImageView.layer.masksToBounds = true
        
        qrImageView.image = UIImage(named: "qr")
        qrImageView.layer.cornerRadius = 8
        qrImageView.layer.masksToBounds = true
        
        shadowView.layer.cornerRadius = 8
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.3
        shadowView.layer.shadowRadius = 6
        shadowView.layer.shadowOffset = CGSize(width: 2, height: 2)
    }
    
}

