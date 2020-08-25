//
//  MidTableViewCell.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/16/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class MidTableViewCell: UITableViewCell {
    static let cellID = "MidTableViewCell"
    var banner:[BannerModel]?
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        collectionView.register(UINib(nibName: TopPartCollectionViewCell.cellID, bundle: nil), forCellWithReuseIdentifier: TopPartCollectionViewCell.cellID)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension MidTableViewCell: UICollectionViewDelegate {
    
}
extension MidTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return banner?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopPartCollectionViewCell.cellID, for: indexPath) as! TopPartCollectionViewCell
        cell.layer.backgroundColor = banner?[indexPath.row].color?.cgColor
        return cell
    }
}
extension MidTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 40, height: 163)
    }
}
