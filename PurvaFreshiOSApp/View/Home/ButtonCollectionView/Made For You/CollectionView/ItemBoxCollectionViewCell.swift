//
//  ItemBoxCollectionViewCell.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/24/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class ItemBoxCollectionViewCell: UICollectionViewCell {
    
    static let cellID = "ItemBoxCollectionViewCell"
    @IBOutlet var imageItem: UIImageView!
    @IBOutlet var discountPercent: UILabel!
    @IBOutlet var currentPrice: UILabel!
    @IBOutlet var basePrice: UILabel!
    @IBOutlet var wightUnit: UILabel!
    @IBOutlet var weight: UILabel!
    @IBOutlet var itemName: UILabel!
    
    
    
    static func regNib() -> UINib {
        return UINib(nibName: "ItemBoxCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(dataModelItems: DataModelItems){
        discountPercent.text = dataModelItems.discoutPercent
        itemName.text = dataModelItems.name
        currentPrice.text = dataModelItems.currentPrice
    }
    
    
}
