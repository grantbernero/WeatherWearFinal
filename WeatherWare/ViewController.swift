//
//  ViewController.swift
//  WeatherWare
//
//  Created by GBernero on 4/12/17.
//  Copyright © 2017 GBernero. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var weather = [[String: String]]()
    var temperature = 0
    var forecast = ""
    var iconText = ""
    
    
    @IBOutlet weak var tempDisplay: UILabel!
    
    @IBOutlet weak var forecastDisplay: UILabel!
   
    @IBOutlet weak var forecastImageDisplay: UIImageView!
    
    @IBOutlet weak var background: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
       // url for the api
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
        
        //displays temperature, a summary word, and a summary image
        tempDisplay.text = "\(temperature)ºF"
        forecastDisplay.text = "\(forecast)"
        forecastImageDisplay.image = UIImage(named: "\(iconText)")
  
       
        //changes background based on the summary word pulled from the api
        if iconText == "snow" || iconText == "cloudy" || iconText == "fog" || iconText == "wind" || iconText == "sleet"
        {
            background.image = UIImage(named: "grey")
        }

        
        if iconText == "clear-day"  || iconText == "partly-cloudy-day"
        {
           background.image = UIImage(named: "orange")
            //orange
        }
        
        if iconText == "rain"
        {
           background.image = UIImage(named: "blue")
            //blue
        }
        
        if iconText == "partly-cloudy-night"  || iconText == "clear-night"
        {
           background.image = UIImage(named: "Background")
            //pink/blue
        }
    }
    
    
    func parse(json: JSON)
    {
        let result = json["currently"].dictionaryValue
        temperature = result["temperature"]!.intValue
        print(temperature)
        forecast = result["summary"]!.stringValue
        iconText = result["icon"]!.stringValue
        
    }
    
    //segues the temperature data to next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let outfitView = segue.destination as! OutfitViewController
        outfitView.myTemp = temperature
    }

}

