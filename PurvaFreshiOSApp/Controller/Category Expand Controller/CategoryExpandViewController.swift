//
//  CategoryExpandViewController.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/25/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class CategoryExpandViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    var dataModelItem = [DataModelItems]() {
        didSet{
            self.collectionView.reloadData()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataModelItem.append(DataModelItems(name: "Water Melon", discoutPercent: "10%", currentPrice: "Rs.200"))
        dataModelItem.append(DataModelItems(name: "Ginger", discoutPercent: "5%", currentPrice: "Rs.50"))
        dataModelItem.append(DataModelItems(name: "Potato", discoutPercent: "15%", currentPrice: "Rs.140"))
        dataModelItem.append(DataModelItems(name: "Onion", discoutPercent: "10%", currentPrice: "Rs.60"))
        dataModelItem.append(DataModelItems(name: "Tomato", discoutPercent: "25%", currentPrice: "Rs.40"))
        dataModelItem.append(DataModelItems(name: "Apple", discoutPercent: "2%", currentPrice: "Rs.350"))
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(ItemBoxCollectionViewCell.regNib(), forCellWithReuseIdentifier: ItemBoxCollectionViewCell.cellID)
        
        
        
    }
    
    
     //MARK:- TableView Data Source Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModelItem.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemBoxCollectionViewCell.cellID, for: indexPath) as! ItemBoxCollectionViewCell
        cell.configure(dataModelItems: dataModelItem[indexPath.row])
        
        return cell
    }
      
    
    
    
    
     //MARK:- Append Data
    
    func appendData() {
        dataModelItem.append(DataModelItems(name: "Water Melon", discoutPercent: "10%", currentPrice: "Rs.200"))
        dataModelItem.append(DataModelItems(name: "Ginger", discoutPercent: "5%", currentPrice: "Rs.50"))
        dataModelItem.append(DataModelItems(name: "Potato", discoutPercent: "15%", currentPrice: "Rs.140"))
        dataModelItem.append(DataModelItems(name: "Onion", discoutPercent: "10%", currentPrice: "Rs.60"))
        dataModelItem.append(DataModelItems(name: "Tomato", discoutPercent: "25%", currentPrice: "Rs.40"))
        dataModelItem.append(DataModelItems(name: "Apple", discoutPercent: "2%", currentPrice: "Rs.350"))
        
    }
    
    
//        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//                return 250
//
//        }

}
