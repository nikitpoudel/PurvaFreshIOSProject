//
//  SignUpViewController.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/13/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
//    @IBOutlet weak var signUpWithFacebookButton: UIButton!
//    @IBOutlet weak var signUpWithGoogleButton: UIButton!
//    @IBOutlet weak var signUpButton: UIButton!
//
//
    override func viewDidLoad() {
        super.viewDidLoad()
//        signUpWithFacebookButtonCustomization()
//        signUpWithGoogleButtonCustomization()
//        signUpButtonCustomization()
    }
    
    
     //MARK:- Button Pressed
    @IBAction func vetNextButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: Nam.seguesName.fromSignUpToRegister, sender: self)
    }
    
    
    
     //MARK:- Button Customization
    
//    func signUpWithFacebookButtonCustomization() {
//        signUpWithFacebookButton.layer.cornerRadius = 5
//
//    }
//
//    func signUpWithGoogleButtonCustomization() {
//        signUpWithGoogleButton.layer.cornerRadius = 5
//        signUpWithGoogleButton.layer.borderWidth = 1
//        signUpWithGoogleButton.layer.borderColor = UIColor(red: CGFloat(0.5), green: CGFloat(0.9), blue: CGFloat(0.9), alpha: CGFloat(1)).cgColor
//    }
//
//    func signUpButtonCustomization() {
//        signUpButton.layer.cornerRadius = 5
//    }
    
}
