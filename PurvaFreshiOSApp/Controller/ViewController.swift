//
//  ViewController.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/12/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guestButtonCustomization()
        loginButtonCustomization()
        
    }
    
 //MARK:- Element Decleration
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var continueAsGuestButton: UIButton!
    

    
    
//MARK:- Button Pressed
    
    @IBAction func vetoNextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: Nam.seguesName.fromOnboardingToSignUp, sender: self)
    }
    
    
    
    
    
    
    
//MARK:- Button Customization
    
    func loginButtonCustomization() {        loginButton.layer.cornerRadius = 5
        
    }
    
    func guestButtonCustomization() {
       
        continueAsGuestButton.layer.cornerRadius = 5
        continueAsGuestButton.layer.borderWidth = 1
        continueAsGuestButton.layer.borderColor = UIColor(red: CGFloat(0.9), green: CGFloat(0.9), blue: CGFloat(0.9), alpha: CGFloat(1)).cgColor
    }
    
    

}

