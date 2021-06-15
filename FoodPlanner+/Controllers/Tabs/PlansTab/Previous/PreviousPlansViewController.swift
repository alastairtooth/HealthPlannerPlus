//
//  PreviousPlansViewController.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 10/6/21.
//

import Foundation
import UIKit

class PreviousPlansViewController: UIViewController {
    
    
    @IBOutlet weak var PrevTableView: UITableView!
    
    
    var messages: [Plan] = [
        Plan(planName: "Eggs for Days", planStart: "12/01/2021", planFinish: "12/10/2021", planAlert: "No Invites Sent", foodImage: UIImage(named: "cake-slice")!),
        Plan(planName: "Meals of Sadness", planStart: "06/04/2020",  planFinish: "19/11/2021", planAlert: "", foodImage: UIImage(named: "carrot")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PrevTableView.dataSource = self
        PrevTableView.delegate = self
        
        //Registering the NIB with the tableview
        PrevTableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
}



extension PreviousPlansViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! PlanCell
        cell.planTitle.text = messages[indexPath.row].planName
        cell.startDate.text = messages[indexPath.row].planStart
        cell.endDate.text = messages[indexPath.row].planFinish
        cell.alertMessage.text = messages[indexPath.row].planAlert
        cell.recipeImage.image = messages[indexPath.row].foodImage
        return cell
    }
    
}


extension PreviousPlansViewController: UITableViewDelegate {
    
    
    //    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    //        tableView.deselectRow(at: indexPath, animated: true)
    //
    //       self.performSegue(withIdentifier: "detailSegue", sender: self)
    //
    //
    //       print(indexPath.row)
    //    }
    
}


