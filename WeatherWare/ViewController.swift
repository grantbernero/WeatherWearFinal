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
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
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
  
    }
    
    func parse(json: JSON)
    {
        let result = json["currently"].dictionaryValue
        let temperature = result["temperature"]!.stringValue
        print(temperature)
        
    }
}

