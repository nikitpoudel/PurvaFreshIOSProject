//
//  ItemBoxTableViewCell.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/24/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class ItemBoxTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    static let cellID = "ItemBoxTableViewCell"
    @IBOutlet var collectionView: UICollectionView!
    var dataModel = [DataModelItems]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(ItemBoxCollectionViewCell.regNib(), forCellWithReuseIdentifier: ItemBoxCollectionViewCell.cellID)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    static func regNib() -> UINib {
        return UINib(nibName: "ItemBoxTableViewCell", bundle: nil)
    }
    
    public func configure(dataModel: [DataModelItems]){
        self.dataModel = dataModel
        collectionView.reloadData()
    }
    
     //MARK:- UICollectionView DataSource Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemBoxCollectionViewCell.cellID, for: indexPath) as! ItemBoxCollectionViewCell
        cell.configure(dataModelItems: dataModel[indexPath.row])
        return cell
    }
    
     //MARK:- UICollectionView Delegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(dataModel[indexPath.row].name)
    }
    
    
}
