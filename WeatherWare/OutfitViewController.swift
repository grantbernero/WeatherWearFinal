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
    @IBOutlet weak var outfitTempLabel: UILabel!
    
     var iconText = ""
    @IBOutlet weak var outfitBackground: UIImageView!
    
    
  override func viewDidLoad()
    {
        super.viewDidLoad()
        print(myTemp)
        outfitTempLabel.text = "today's outfit suggestions for \(myTemp)ºF"
        
        let urlString = "https://api.darksky.net/forecast/073a234b57601d6861b0f5e0d44defe4/42.15704,-88.14812"
        
        if let url = NSURL(string: urlString)
        {
            if let myData = try? NSData(contentsOf: url as URL, options: [])
            {
                let json = JSON(data:myData as Data)
                print("ok to parse")
                parse(json: json)
            }
        }

        
        if iconText == "snow" || iconText == "cloudy" || iconText == "fog" || iconText == "wind" || iconText == "sleet"
        {
            outfitBackground.image = UIImage(named: "grey")
        }
        
        
        if iconText == "clear-day"  || iconText == "partly-cloudy-day"
        {
            outfitBackground.image = UIImage(named: "orange")
            //orange
        }
        
        if iconText == "rain"
        {
            outfitBackground.image = UIImage(named: "blue")
            //blue
        }
        
        if iconText == "partly-cloudy-night"  || iconText == "clear-night"
        {
            outfitBackground.image = UIImage(named: "Background")
            //pink/blue
        }

      
    }
    
    //each piece of an outfit has a separate Image View to be displayed in
    @IBOutlet weak var topPic: UIImageView!
    @IBOutlet weak var bottomsPic: UIImageView!
    @IBOutlet weak var shoesPic: UIImageView!
    @IBOutlet weak var accessoriesPic: UIImageView!
    @IBOutlet weak var jacketPic: UIImageView!
    @IBOutlet weak var extraPic: UIImageView!
    
    
    
    func parse(json: JSON)
    {
        let result = json["currently"].dictionaryValue
        iconText = result["icon"]!.stringValue
        
    }
    
    //male button outfits created based on temperature
    @IBAction func maleButtonTapped(_ sender: Any)
    {
        if myTemp <= 32
        {
            topPic.image = UIImage(named:"M-Sweater")
           bottomsPic.image = UIImage(named:"M-LongPants")
            shoesPic.image = UIImage(named:"M-WinterBoots")
            accessoriesPic.image = UIImage(named:"M-Scarf")
            jacketPic.image = UIImage(named:"M-WinterCoat")
            extraPic.image = UIImage(named:"M-Hat")
        }
        
        if myTemp > 32 && myTemp < 60
        {
            topPic.image = UIImage(named:"M-LongSleeve")
            bottomsPic.image = UIImage(named:"M-LongPants")
             shoesPic.image = UIImage(named:"M-RunningShoe")
             accessoriesPic.image = UIImage(named:"M-BaseballCap")
             jacketPic.image = UIImage(named:"M-LightJacket")
             extraPic.image = UIImage(named:"transparent")
        }
        
        if myTemp >= 60 && myTemp < 80
        {
            topPic.image = UIImage(named:"M-Tshirt")
             bottomsPic.image = UIImage(named:"M-Shorts")
            shoesPic.image = UIImage(named:"M-RunningShoe")
             accessoriesPic.image = UIImage(named:"M-Sunglasses")
             jacketPic.image = UIImage(named:"M-LightJacket")
             extraPic.image = UIImage(named:"transparent")
        }
        
        if myTemp >= 80
        {
             topPic.image = UIImage(named:"M-TankTop")
             bottomsPic.image = UIImage(named:"M-Shorts")
             shoesPic.image = UIImage(named:"M-RunningShoe")
             accessoriesPic.image = UIImage(named:"M-Sunglasses")
            jacketPic.image = UIImage(named:"transparent")
            extraPic.image = UIImage(named:"M-SwimSuit")
        }
    }

    //female outfits created based on temperature
    @IBAction func femaleButtonTapped(_ sender: Any)
    {
        if myTemp <= 32
        {
             topPic.image = UIImage(named:"F-Sweater")
             bottomsPic.image = UIImage(named:"F-LongPants")
            shoesPic.image = UIImage(named:"F-WinterBoots")
             accessoriesPic.image = UIImage(named:"M-Gloves")
            jacketPic.image = UIImage(named:"WinterCoat")
             extraPic.image = UIImage(named:"M-Hat")
        }
        
        if myTemp > 32 && myTemp < 60
        {
             topPic.image = UIImage(named:"F-Longsleeve")
             bottomsPic.image = UIImage(named:"F-LongPants")
             shoesPic.image = UIImage(named:"F-Shoes")
             accessoriesPic.image = UIImage(named:"F-Pursejpg")
             jacketPic.image = UIImage(named:"F-LightJacket")
             extraPic.image = UIImage(named:"F-LongDress")
        }
        
        if myTemp >= 60 && myTemp < 80
        {
             topPic.image = UIImage(named:"F-ShortSleeve")
             bottomsPic.image = UIImage(named:"F-Skirt")
             shoesPic.image = UIImage(named:"F-Shoes")
             accessoriesPic.image = UIImage(named:"F-Pursejpg")
             jacketPic.image = UIImage(named:"F-Sunglasses")
             extraPic.image = UIImage(named:"F-ShortDress")
        }
        
        if myTemp >= 80
        {
             topPic.image = UIImage(named:"F-TankTop")
             bottomsPic.image = UIImage(named:"F-Shorts")
             shoesPic.image = UIImage(named:"F-FlipFlops")
            accessoriesPic.image = UIImage(named:"F-Sunglasses")
             jacketPic.image = UIImage(named:"SleevelessDress")
            extraPic.image = UIImage(named:"F-Bakini")
        }
    }
    
}
