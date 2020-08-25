//
//  DashboardViewController.swift
//  PurvaFreshiOSApp
//
//  Created by Nikit Poudel on 8/16/20.
//  Copyright © 2020 Nikit Poudel. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet var headerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    var dataModel: [TableViewModel]? = []{
        didSet{
            self.tableView.reloadData()
        }
    }
    @IBAction func nextPressed(_ sender: UIButton) {
        print("Next Pressed")
        performSegue(withIdentifier: "fromHomeToCategoryExpand", sender: self)
    }
    
    
    var forHight: Int?
    
    var dataModelCat = [DataModelCategory]()
    var dataModelItem = [DataModelItems]()
    override func viewDidLoad() {
        super.viewDidLoad()
        dataModelCat.append(DataModelCategory(with: "Fruits", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Vegetable", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Fish", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Meat", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Herbs", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Frozen", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Dairy", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Snaks", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Grains", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Rice", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Liquors", with: "1"))
        dataModelCat.append(DataModelCategory(with: "Juices", with: "1"))
        
        dataModelItem.append(DataModelItems(name: "Water Melon", discoutPercent: "10%", currentPrice: "Rs.200"))
        dataModelItem.append(DataModelItems(name: "Ginger", discoutPercent: "5%", currentPrice: "Rs.50"))
        dataModelItem.append(DataModelItems(name: "Potato", discoutPercent: "15%", currentPrice: "Rs.140"))
        dataModelItem.append(DataModelItems(name: "Onion", discoutPercent: "10%", currentPrice: "Rs.60"))
        dataModelItem.append(DataModelItems(name: "Tomato", discoutPercent: "25%", currentPrice: "Rs.40"))
        dataModelItem.append(DataModelItems(name: "Apple", discoutPercent: "2%", currentPrice: "Rs.350"))

        loadTableViewCell()
        self.tableView.tableHeaderView = headerView
        self.dataModel?.append(TableViewModel(section: .banner, banner: BannerModel.getBanner()))
        // Do any additional setup after loading the view.
        
        tableView.register(HomeCategoryTableViewCell.regNIB(), forCellReuseIdentifier: HomeCategoryTableViewCell.identifier)
        tableView.register(ItemBoxTableViewCell.regNib(), forCellReuseIdentifier: ItemBoxTableViewCell.cellID)
    }
    
    func loadTableViewCell(){
        tableView.register(UINib(nibName: MidTableViewCell.cellID, bundle: nil), forCellReuseIdentifier: MidTableViewCell.cellID)
        tableView.register(HomeCategoryCollectionViewCell.regNIB(), forCellReuseIdentifier: HomeCategoryCollectionViewCell.cellID)
    }
    
    @IBAction func vitoNextButtonPressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "fromHomeToCategoryExpand", sender: self)
    }
}


 //MARK:- TableView Delegate

extension DashboardViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if forHight == 0 {
            return 163
        }
        
        else {
            return 250
        }
        
    }
}


 //MARK:- TableView Data Source

extension DashboardViewController: UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 2 {
            return "Cat"
        }
        else {
            return "Category"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if dataModel?[indexPath.section].section == .banner {
//
//        }
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: MidTableViewCell.cellID, for: indexPath) as! MidTableViewCell
            cell.selectionStyle = .none
            cell.banner = dataModel?[indexPath.section].banner
            forHight = indexPath.row
            return cell
        }
            
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: HomeCategoryTableViewCell.identifier, for: indexPath) as! HomeCategoryTableViewCell
            cell.configure(with: dataModelCat)
            forHight = indexPath.row
            
            return cell
        }
        
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: ItemBoxTableViewCell.cellID, for: indexPath) as! ItemBoxTableViewCell
            cell.configure(dataModel: dataModelItem)
            
            return cell
        }
    }
    
    func perfromNavigation(){
        
    }
}


 //MARK:- DataModel

struct TableViewModel{
    var section: TableViewEnum?
    var banner: [BannerModel]?
    init(section: TableViewEnum,banner: [BannerModel]) {
        self.banner = banner
        self.section = section
    }
    
}
struct BannerModel {
    var id: Int?
    var image: String?
    var color: UIColor?
    static func getBanner() -> [BannerModel] {
        let banner = [BannerModel(id: 1, image:  "img1CollectionView1",color: UIColor.Color.greenColor),BannerModel(id: 2, image: "img1CollectionView1",color: UIColor.Color.yellowColor)]
        return banner
    }
}
enum TableViewEnum: String {
    case banner = "banner"
    case category = "category"
    //    case itemList = "itemList"
}

struct DataModelCategory {
    var name: String
    var image: String
    init(with name: String, with image: String) {
        self.name = name
        self.image = image
    }
}


