//
//  ViewController.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/12/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var continueAsGuestPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guestButtonCustomization()
    }

    
    
//MARK:- Button Customization
    func guestButtonCustomization() {
        continueAsGuestPressed.layer.borderWidth = 1
        continueAsGuestPressed.layer.borderColor = UIColor(red: CGFloat(0.9), green: CGFloat(0.9), blue: CGFloat(0.9), alpha: CGFloat(1)).cgColor
    }

}

