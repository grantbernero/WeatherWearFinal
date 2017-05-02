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

    //comment
  override func viewDidLoad()
    {
        super.viewDidLoad()
      
    }
    
    @IBOutlet weak var topPic: UIImageView!
    @IBOutlet weak var bottomsPic: UIImageView!
    @IBOutlet weak var shoesPic: UIImageView!
    @IBOutlet weak var accessoriesPic: UIImageView!
    @IBOutlet weak var jacketPic: UIImageView!
    @IBOutlet weak var extraPic: UIImageView!
    
    
    @IBAction func maleButtonTapped(_ sender: Any)
    {
        if temperature <= 32
        {
            print()
        }
        
        if temperature > 32 && temperature < 60
        {
            print()
        }
        
        if temperature >= 60 && temperature < 80
        {
            print()
        }
        
        if temperature >= 80
        {
            print()
        }
    }

    @IBAction func femaleButtonTapped(_ sender: Any)
    {
        if temperature <= 32
        {
            print()
        }
        
        if temperature > 32 && temperature < 60
        {
            print()
        }
        
        if temperature >= 60 && temperature < 80
        {
            print()
        }
        
        if temperature >= 80
        {
            print()
        }
    }
    
}
