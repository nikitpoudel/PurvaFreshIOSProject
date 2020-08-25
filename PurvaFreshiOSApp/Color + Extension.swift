//
//  Color + Extension.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/16/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    struct Color {
        static let greenColor = UIColor.hexColour(hexValue: 0x08C25E)
        static let yellowColor = UIColor.hexColour(hexValue: 0xFDB64F)
    }
    
    static func hexColour(hexValue:UInt32) -> UIColor
    {
        let red = CGFloat((hexValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hexValue & 0xFF00) >> 8) / 255.0
        let blue = CGFloat(hexValue & 0xFF) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
