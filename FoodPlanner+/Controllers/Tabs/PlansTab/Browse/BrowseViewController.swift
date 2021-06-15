//
//  BrowseViewController.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 10/6/21.
//

import UIKit

class BrowseViewController: UIViewController {
    
    @IBOutlet weak var browseViewController: UITableView!
    
    var colorsArray = Colors()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
        browseViewController.delegate = self
        browseViewController.dataSource = self
        
        let cellNib = UINib(nibName: K.browseTableViewCell, bundle: nil)
        self.browseViewController.register(cellNib, forCellReuseIdentifier: K.tableViewCellID)
        
    }
}

extension BrowseViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return colorsArray.objectsArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //Advises the number of subcategories within each category
        return colorsArray.objectsArray[section].subcategory.count

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.white
        let titleLabel = UILabel(frame: CGRect(x: 8, y: 0, width: 200, height: 44))
        headerView.addSubview(titleLabel)
        titleLabel.textColor = UIColor.systemPink
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.text = colorsArray.objectsArray[section].category
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        44
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = browseViewController.dequeueReusableCell(withIdentifier: K.tableViewCellID) as? BrowseTableViewCell {
            
            // Show SubCategory Title
            let subCategoryTitle = colorsArray.objectsArray[indexPath.section].subcategory
            cell.subCategoryLabel.text = subCategoryTitle[indexPath.row]
            
            // Pass the data to colletionview inside the tableviewcell
            let rowArray = colorsArray.objectsArray[indexPath.section].colors[indexPath.row]
            cell.updateCellWith(row: rowArray)
            
            cell.cellDelegate = self
          
            return cell
        }
        return UITableViewCell()
    }
}

extension BrowseViewController: CollectionViewCellDelegate {
    func collectionView(collectionviewcell: BrowseCollectionViewCell?, index: Int, didTappedInTableViewCell: BrowseTableViewCell) {
        if let colorsRow = didTappedInTableViewCell.rowWithColors {
            print("You tapped the cell \(index) in the row of colors \(colorsRow)")
            // You can also do changes to the cell you tapped using the 'collectionviewcell'
        }
    }
}
