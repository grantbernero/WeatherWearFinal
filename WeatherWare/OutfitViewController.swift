//
//  OutfitViewController.swift
//  WeatherWare
//
//  Created by omenconi on 4/28/17.
//  Copyright © 2017 GBernero. All rights reserved.
//

import UIKit

class OutfitViewController: UIViewController
{

    var weatherDetail:WeatherClass!
    var myTemp = 0
    
  override func viewDidLoad()
    {
        super.viewDidLoad()
        print(myTemp)
      
    }
    
    @IBOutlet weak var topPic: UIImageView!
    @IBOutlet weak var bottomsPic: UIImageView!
    @IBOutlet weak var shoesPic: UIImageView!
    @IBOutlet weak var accessoriesPic: UIImageView!
    @IBOutlet weak var jacketPic: UIImageView!
    @IBOutlet weak var extraPic: UIImageView!
    
//    let temperature = weatherDetail.temperature
    
    @IBAction func maleButtonTapped(_ sender: Any)
    {
        if myTemp <= 32
        {
           let topPic = "M-Sweater"
           let bottomsPic = "M-LongPants"
            let shoesPic = "M-WinterBoots"
            let accesssoriesPic = "M-Scarf"
            let jacketPic = "M-WinterCoat"
            let extraPic = "M-Hat"
        }
        
        if myTemp > 32 && myTemp < 60
        {
            let topPic = "M-LongSleeve"
            let bottomsPic = "M-LongPants"
            let shoesPic = "M-RunningShoe"
            let accesssoriesPic = "M-BaseballCap"
            let jacketPic = "M-LightJacket"
            let extraPic = "transparent"
        }
        
        if myTemp >= 60 && myTemp < 80
        {
            let topPic = "M-Tshirt"
            let bottomsPic = "M-Shorts"
            let shoesPic = "M-RunningShoe"
            let accesssoriesPic = "M-Sunglasses"
            let jacketPic = "M-LightJacket"
            let extraPic = "transparent"
        }
        
        if myTemp >= 80
        {
            let topPic = "M-TankTop"
            let bottomsPic = "M-Shorts"
            let shoesPic = "M-RunningShoe"
            let accesssoriesPic = "M-Sunglasses"
            let jacketPic = "transparent"
            let extraPic = "M-SwimSuit"
        }
    }

    @IBAction func femaleButtonTapped(_ sender: Any)
    {
        if myTemp <= 32
        {
            let topPic = "F-Sweater"
            let bottomsPic = "F-LongPants"
            let shoesPic = "F-WinterBoots"
            let accesssoriesPic = "M-Gloves"
            let jacketPic = "WinterCoat"
            let extraPic = "M-Hat"
        }
        
        if myTemp > 32 && myTemp < 60
        {
            let topPic = "F-LongSleeve"
            let bottomsPic = "F-LongPants"
            let shoesPic = "F-Shoes"
            let accesssoriesPic = "F-Purse"
            let jacketPic = "F-LightJacket"
            let extraPic = "F-LongDress"
        }
        
        if myTemp >= 60 && myTemp < 80
        {
            let topPic = "F-ShortSleeve"
            let bottomsPic = "F-Skirt"
            let shoesPic = "F-Shoes"
            let accesssoriesPic = "F-Sunglasses"
            let jacketPic = "transparent"
            let extraPic = "ShortDress"
        }
        
        if myTemp >= 80
        {
            let topPic = "F-TankTop"
            let bottomsPic = "F-Shorts"
            let shoesPic = "F-FlipFlops"
            let accesssoriesPic = "F-Sunglasses"
            let jacketPic = "SleevelessDress"
            let extraPic = "F-Bakini"
        }
    }
    
}
