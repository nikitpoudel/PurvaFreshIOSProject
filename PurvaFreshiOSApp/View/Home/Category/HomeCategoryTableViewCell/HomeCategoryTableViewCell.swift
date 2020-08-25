//
//  HomeCategoryTableViewCell.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/23/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class HomeCategoryTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {

    static let identifier = "HomeCategoryTableViewCell"
    static let segueFromHomeToCategoryExpand = "fromHomeToCategoryExpand"
    
    @IBOutlet weak var homeCV: UICollectionView!
    var dataModel = [DataModelCategory]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        homeCV.register(HomeCategoryCollectionViewCell.regNIB(), forCellWithReuseIdentifier: HomeCategoryCollectionViewCell.cellID)
        homeCV.dataSource = self
        homeCV.delegate = self
        // Initialization code

    }
    
    static func regNIB() -> UINib {
        return UINib(nibName: "HomeCategoryTableViewCell", bundle: nil)
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(with dataModel: [DataModelCategory]) {
        self.dataModel = dataModel
        homeCV.reloadData()
    }
    
    
    
     //MARK:- CollectionView Data Source
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCategoryCollectionViewCell.cellID, for: indexPath) as! HomeCategoryCollectionViewCell
        cell.configure(with: dataModel[indexPath.row].name)
        return cell
    }
    
     //MARK:- CollectionView Delegates
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("Pressed at: \(dataModel[indexPath.row].name)")
        
    }
    
    
}

extension HomeCategoryTableViewCell: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1000.0
    }
}


