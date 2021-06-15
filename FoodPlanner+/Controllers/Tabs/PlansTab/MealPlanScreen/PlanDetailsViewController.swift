//
//  PlanDetailsViewController.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 11/6/21.
//

import UIKit
import Firebase

class PlanDetailsViewController: UIViewController {
    
    @IBOutlet weak var planTableView: UITableView!
    @IBOutlet weak var weekSlider: UISlider!
    @IBOutlet weak var weekLabel: UILabel!
    @IBOutlet weak var planTitle: UILabel!
    
    var mealsArray = weekMealPlan()
    var contenttest = Colors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        planTableView.delegate = self
        planTableView.dataSource = self
        
        let cellNib = UINib(nibName: K.MealPlanTableViewCell, bundle: nil)
        self.planTableView.register(cellNib, forCellReuseIdentifier: K.mealTableViewID)
        
    }
}

extension PlanDetailsViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return mealsArray.mealObjectsArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //Advises the number of subcategories within each category
        return mealsArray.mealObjectsArray[section].subcategory.count

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.white
        let titleLabel = UILabel(frame: CGRect(x: 8, y: 0, width: 200, height: 44))
        headerView.addSubview(titleLabel)
        titleLabel.textColor = UIColor.systemPink
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.text = mealsArray.mealObjectsArray[section].category
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        44
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = planTableView.dequeueReusableCell(withIdentifier: K.mealTableViewID) as? MealPlanTableViewCell {
            
            // Show SubCategory Title
            let subCategoryTitle = mealsArray.mealObjectsArray[indexPath.section].subcategory
            cell.subCategoryLabel.text = subCategoryTitle[indexPath.row]
            
            // Pass the data to colletionview inside the tableviewcell
            let rowArray = mealsArray.mealObjectsArray[indexPath.section].meals[indexPath.row]
            cell.updateCellWith(row: rowArray)
            
            cell.cellDelegate = self
          
            return cell
        }
        return UITableViewCell()
    }
}

extension PlanDetailsViewController: MealCollectionViewCellDelegate {
    func collectionView(collectionviewcell: MealTableCollectionViewCell?, index: Int, didTappedInTableViewCell: MealPlanTableViewCell) {
        if let colorsRow = didTappedInTableViewCell.rowWithMeals {
            print("You tapped the cell \(index) in the row of colors \(colorsRow)")
            // You can also do changes to the cell you tapped using the 'collectionviewcell'
        }
    }
}
