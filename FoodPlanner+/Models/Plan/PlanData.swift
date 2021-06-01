//
//  PlanData.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 31/5/21.
//

import Foundation
import UIKit

struct Plan {
 
    let planName: String
    let planStart: String
    let planFinish: String
    let planAlert: String
    let foodImage: UIImage
    
    
}

struct PlanDetails {
    
    let Day: String
    let mealName: String
    let mealIcon: UIImage
    let date: Date
    
}

struct dowData {
    
    let dayOfWeek:   String
    let dateDay:     String
    
}


struct TempRecipe {
    let recipeName: String
    let recipeImage: UIImage
}

struct PlanData {
    struct collections {
        static let collectionName   = "planInfo"
        static let week             = "week"
        static let day              = "day"
        static let plan             = "plan_name"
        static let mType            = "meal_type"
        static let mName            = "meal_name"
        static let cal              = "calories"
    }

    var horizontalData: [dowData] = [
        dowData(dayOfWeek: "M", dateDay: "17"),
        dowData(dayOfWeek: "T", dateDay: "18"),
        dowData(dayOfWeek: "W", dateDay: "19"),
        dowData(dayOfWeek: "T", dateDay: "20"),
        dowData(dayOfWeek: "F", dateDay: "21"),
        dowData(dayOfWeek: "S", dateDay: "22"),
        dowData(dayOfWeek: "S", dateDay: "23"),
    ]
    
    var recipeData: [TempRecipe] = [
        TempRecipe(recipeName: "Breakfast", recipeImage: #imageLiteral(resourceName: "Breakfast")),
        TempRecipe(recipeName: "Morning Snack", recipeImage: #imageLiteral(resourceName: "breakfast")),
        TempRecipe(recipeName: "Lunch", recipeImage: #imageLiteral(resourceName: "Lunch")),
        TempRecipe(recipeName: "Afternoon Snack", recipeImage: #imageLiteral(resourceName: "carrot")),
        TempRecipe(recipeName: "Dinner", recipeImage: #imageLiteral(resourceName: "Dinner")),
    ]
    
}
