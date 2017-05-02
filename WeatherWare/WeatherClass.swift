//
//  WeatherClass.swift
//  WeatherWare
//
//  Created by GBernero on 5/2/17.
//  Copyright © 2017 GBernero. All rights reserved.
//

import Foundation

import UIKit

class WeatherClass: NSObject
{
    var temperature = 0
    
    init(Temperature:Int)
    {
        temperature = Temperature
    }
}
