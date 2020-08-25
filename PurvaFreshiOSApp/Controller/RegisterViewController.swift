//
//  RegisterViewController.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/13/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func vetNextButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: Nam.seguesName.fromSignUpToPayment, sender: self)
    }
}
