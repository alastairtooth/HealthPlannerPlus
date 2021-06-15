//
//  BrowseTableViewCell.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 10/6/21.
//

import UIKit
protocol CollectionViewCellDelegate: AnyObject {
    func collectionView(collectionviewcell: BrowseCollectionViewCell?, index: Int, didTappedInTableViewCell: BrowseTableViewCell)
    // other delegate methods that you can define to perform action in viewcontroller
}


class BrowseTableViewCell: UITableViewCell {
    
    @IBOutlet weak var subCategoryLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var row: [CollectionViewCellModel]?
    var rowWithColors: [CollectionViewCellModel]?
    
    weak var cellDelegate: CollectionViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize(width: 150, height: 180)
        flowLayout.minimumLineSpacing = 2.0
        flowLayout.minimumInteritemSpacing = 5.0
        self.collectionView.collectionViewLayout = flowLayout
        self.collectionView.showsHorizontalScrollIndicator = false
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        // Register the xib for collection view cell
        let cellNib = UINib(nibName: K.browseCollectionViewCell, bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: K.collectionViewCellID)
        
    }
    
    
}

extension BrowseTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // The data we passed from the TableView send them to the CollectionView Model
    func updateCellWith(row: [CollectionViewCellModel]) {
        self.rowWithColors = row
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        Should return the number of items that displays in each row, for each row (will loop until all rows covered)
        return self.rowWithColors?.count ?? 0
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        //Number of sections within the horizontal scrolling row in the collectionview
        return 1
    }
    
    // Set the data for each cell (color and color name)
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: K.collectionViewCellID, for: indexPath) as? BrowseCollectionViewCell {
            cell.colorView.backgroundColor = self.rowWithColors?[indexPath.item].color ?? UIColor.black
            cell.nameLabel.text = self.rowWithColors?[indexPath.item].name ?? ""
            return cell
        }
        return UICollectionViewCell()
    }
    
    // Add spaces at the beginning and the end of the collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? BrowseCollectionViewCell
        self.cellDelegate?.collectionView(collectionviewcell: cell, index: indexPath.item, didTappedInTableViewCell: self)
          
    }
    
    
}
