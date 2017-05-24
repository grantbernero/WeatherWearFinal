//
//  Configuration.swift
//  WeatherWare
//
//  Created by GBernero on 4/19/17.
//  Copyright © 2017 GBernero. All rights reserved.
//

import Foundation

struct API
{
    static let APIKey = "073a234b57601d6861b0f5e0d44defe4"
    static let BaseURL = URL(string: "https://api.darksky.net/forecast/")!
    static var AuthenticaedBaseURL: URL
        {
            return BaseURL.appendingPathComponent(APIKey)
        }
}

struct Defaults
{
    static let Latitude: Double = 42.15704
    
    static let Longitude: Double = -88.14812
}
