//
//  ViewController.swift
//  AnimalHospitalApp
//
//  Created by jun on 2020/10/25.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.selectedIndex = 0
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        let medicalVC = UIStoryboard(name: "Medical", bundle: nil).instantiateInitialViewController()!
        let medicalNav = UINavigationController(rootViewController: medicalVC)
        
        let foodVC = UIStoryboard(name: "FoodSelect", bundle: nil).instantiateInitialViewController()!
        let foodNav = UINavigationController(rootViewController: foodVC)
        
        let waitingTimeVC = UIStoryboard(name: "WaitingTime", bundle: nil).instantiateInitialViewController()!
        let waitingTimeNav = UINavigationController(rootViewController: waitingTimeVC)
        
        let myPageVC = UIStoryboard(name: "MyPage", bundle: nil).instantiateInitialViewController()!
        let myPageNav = UINavigationController(rootViewController: myPageVC)
        
        let medicalItemImage = UIImage(named: "doc")?.resizeUIImage(width: 27, height: 27)
        let medicalItemSelectedImage = UIImage(named: "doc_fill")?.resizeUIImage(width: 27, height: 27)
        let foodItemImage = UIImage(named: "food")?.resizeUIImage(width: 27, height: 27)
        let foodItemSelectedImage = UIImage(named: "food_fill")?.resizeUIImage(width: 27, height: 27)
        let waitingTimeItemImage = UIImage(named: "timer")?.resizeUIImage(width: 27, height: 27)
        let waitingTimeItemSelectedImage = UIImage(named: "timer_fill")?.resizeUIImage(width: 27, height: 27)
        let myPageItemImage = UIImage(named: "doghouse")?.resizeUIImage(width: 27, height: 27)
        let myPageItemSelectedImage = UIImage(named: "doghouse_fill")?.resizeUIImage(width: 27, height: 27)
      
        
        medicalVC.tabBarItem = UITabBarItem(title: "診察", image: medicalItemImage, selectedImage: medicalItemSelectedImage)
        foodVC.tabBarItem = UITabBarItem(title: "フード", image: foodItemImage, selectedImage: foodItemSelectedImage)
        waitingTimeVC.tabBarItem = UITabBarItem(title: "待ち時間", image: waitingTimeItemImage, selectedImage: waitingTimeItemSelectedImage)
        
        myPageVC.tabBarItem = UITabBarItem(title: "マイページ", image: myPageItemImage, selectedImage: myPageItemSelectedImage)
        
        UITabBar.appearance().tintColor = .systemPink
        self.viewControllers = [medicalNav, foodNav, waitingTimeNav, myPageNav]
    }

}

