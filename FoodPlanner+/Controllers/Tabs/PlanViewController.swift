//
//  PlansViewController.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 30/5/21.
//

import Foundation
import UIKit
//import Firebase

class PlanViewController: UIViewController {
    
    
//    let db = Firestore.firestore()

    
    @IBOutlet weak var tableView: UITableView!
    
//    var message: [Plan] = [
//        Plan(planName: "KetoCrazy", planStart: "12/01/2021", planFinish: "12/10/2021", planAlert: "No Invites Sent", foodImage: UIImage(named: "Breakfast")!)]
    
    var messages: [Plan] = [
        Plan(planName: "KetoCrazy", planStart: "12/01/2021", planFinish: "12/10/2021", planAlert: "No Invites Sent", foodImage: UIImage(named: "Breakfast")!),
        Plan(planName: "Nothing but Noodles", planStart: "06/04/2020",  planFinish: "19/11/2021", planAlert: "", foodImage: UIImage(named: "Dinner")!),
        Plan(planName: "Eat the Meat", planStart: "03/08/2042", planFinish: "12/10/2021", planAlert: "Please create plan", foodImage: UIImage(named: "Lunch")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(messages[1].planName)
        print(messages[1].planStart)
        print(messages[1].planFinish)
        print(messages[1].planAlert)
        print(messages[1].foodImage)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Registering the NIB with the tableview
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
//      Setup NavBar
        self.tabBarController?.navigationItem.titleView = nil;
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.navigationItem.largeTitleDisplayMode = .always
        self.tabBarController?.navigationItem.title = NSLocalizedString("Meal_Plans", comment: "Meal Plans")
        
        
        print("SOMETHING 2")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("SOMETHING 3")
        
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.titleView = nil;
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.tabBarController?.navigationItem.largeTitleDisplayMode = .always
        self.tabBarController?.navigationItem.title = NSLocalizedString("Meal_Plans", comment: "Meal Plans")
        
    }
    
    
}

extension PlanViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("SOMETHING 4 \(messages.count)")
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("SOMETHING 5")
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! PlanCell
        cell.planTitle.text = messages[indexPath.row].planName
        cell.startDate.text = messages[indexPath.row].planStart
        cell.endDate.text = messages[indexPath.row].planFinish
        cell.alertMessage.text = messages[indexPath.row].planAlert
        cell.recipeImage.image = messages[indexPath.row].foodImage
        return cell
    }
    
    
}

extension PlanViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("SOMETHING 6")
        
         tableView.deselectRow(at: indexPath, animated: true)
        
        self.performSegue(withIdentifier: "detailSegue", sender: self)
        
        
        print(indexPath.row)
    }
    
}

