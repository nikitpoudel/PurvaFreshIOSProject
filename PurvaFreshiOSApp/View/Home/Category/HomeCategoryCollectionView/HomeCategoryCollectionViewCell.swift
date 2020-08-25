//
//  HomeCategoryCollectionViewCell.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/22/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class HomeCategoryCollectionViewCell: UICollectionViewCell {
    static let cellID = "HomeCategoryCollectionViewCell"
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var name: UILabel!
    
    static func regNIB() -> UINib {
        return UINib(nibName: "HomeCategoryCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with name: String){
        self.name.text = name
    }

}
