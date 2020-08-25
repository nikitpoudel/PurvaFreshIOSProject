//
//  Model.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/24/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import Foundation

struct DataModelItems {
    var name: String
    var discoutPercent: String
    var currentPrice: String
    init(name: String, discoutPercent: String, currentPrice: String) {
        self.name = name
        self.discoutPercent = discoutPercent
        self.currentPrice = currentPrice
    }
}
