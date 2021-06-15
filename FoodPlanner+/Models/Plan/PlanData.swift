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


//Data Structure for Plan Details Screen

struct MealTableViewCellModel {
    var category: String
    var subcategory: [String]
    var meals: [[MealPlanCellModel]]
}

struct MealPlanCellModel {
    var meal: UIImage
    var name: String
}

struct weekMealPlan {
    var mealObjectsArray: [MealTableViewCellModel] = [
        MealTableViewCellModel(
            category: "Monday",
            subcategory: ["Meals", "Snacks"],
            meals: [
                //Meals
                [MealPlanCellModel(meal: UIImage(named: "Breakfast")!, name: "Breakfast"),
                 MealPlanCellModel(meal: UIImage(named: "Lunch")!, name: "Lunch"),
                 MealPlanCellModel(meal: UIImage(named: "Dinner")!, name: "Dinner"),
                 MealPlanCellModel(meal: UIImage(named: "cake-slice")!, name: "Dessert")],
                //Snacks
                [MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 1"),
                 MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 2"),
                 MealPlanCellModel(meal: UIImage(named: "biscuits")!, name: "Snack 3")]
            ]),
        MealTableViewCellModel(
            category: "Tuesday",
            subcategory: ["Meals", "Snacks"],
            meals: [
                
                //Meals
                [MealPlanCellModel(meal: UIImage(named: "Breakfast")!, name: "Breakfast"),
                 MealPlanCellModel(meal: UIImage(named: "Lunch")!, name: "Lunch"),
                 MealPlanCellModel(meal: UIImage(named: "Dinner")!, name: "Dinner"),
                 MealPlanCellModel(meal: UIImage(named: "cake-slice")!, name: "Dessert")],
                
                //Snacks
                [MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 1"),
                 MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 2"),
                 MealPlanCellModel(meal: UIImage(named: "biscuits")!, name: "Snack 3")]
                
            ]),
        MealTableViewCellModel(
            category: "Wednesday",
            subcategory: ["Meals", "Snacks"],
            meals: [
                
                //Meals
                [MealPlanCellModel(meal: UIImage(named: "Breakfast")!, name: "Breakfast"),
                 MealPlanCellModel(meal: UIImage(named: "Lunch")!, name: "Lunch"),
                 MealPlanCellModel(meal: UIImage(named: "Dinner")!, name: "Dinner"),
                 MealPlanCellModel(meal: UIImage(named: "cake-slice")!, name: "Dessert")],
                
                //Snacks
                [MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 1"),
                 MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 2"),
                 MealPlanCellModel(meal: UIImage(named: "biscuits")!, name: "Snack 3")]
                
            ]),
        MealTableViewCellModel(
            category: "Thursday",
            subcategory: ["Meals", "Snacks"],
            meals: [
                
                //Meals
                [MealPlanCellModel(meal: UIImage(named: "Breakfast")!, name: "Breakfast"),
                 MealPlanCellModel(meal: UIImage(named: "Lunch")!, name: "Lunch"),
                 MealPlanCellModel(meal: UIImage(named: "Dinner")!, name: "Dinner"),
                 MealPlanCellModel(meal: UIImage(named: "cake-slice")!, name: "Dessert")],
                
                //Snacks
                [MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 1"),
                 MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 2"),
                 MealPlanCellModel(meal: UIImage(named: "biscuits")!, name: "Snack 3")]
                
            ]),
        MealTableViewCellModel(
            category: "Friday",
            subcategory: ["Meals", "Snacks"],
            meals: [
                
                //Meals
                [MealPlanCellModel(meal: UIImage(named: "Breakfast")!, name: "Breakfast"),
                 MealPlanCellModel(meal: UIImage(named: "Lunch")!, name: "Lunch"),
                 MealPlanCellModel(meal: UIImage(named: "Dinner")!, name: "Dinner"),
                 MealPlanCellModel(meal: UIImage(named: "cake-slice")!, name: "Dessert")],
                
                //Snacks
                [MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 1"),
                 MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 2"),
                 MealPlanCellModel(meal: UIImage(named: "biscuits")!, name: "Snack 3")]
                
            ]),
        MealTableViewCellModel(
            category: "Saturday",
            subcategory: ["Meals", "Snacks"],
            meals: [
                
                //Meals
                [MealPlanCellModel(meal: UIImage(named: "Breakfast")!, name: "Breakfast"),
                 MealPlanCellModel(meal: UIImage(named: "Lunch")!, name: "Lunch"),
                 MealPlanCellModel(meal: UIImage(named: "Dinner")!, name: "Dinner"),
                 MealPlanCellModel(meal: UIImage(named: "cake-slice")!, name: "Dessert")],
                
                //Snacks
                [MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 1"),
                 MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 2"),
                 MealPlanCellModel(meal: UIImage(named: "biscuits")!, name: "Snack 3")]
                
            ]),
        MealTableViewCellModel(
            category: "Sunday",
            subcategory: ["Meals", "Snacks"],
            meals: [
                
                //Meals
                [MealPlanCellModel(meal: UIImage(named: "Breakfast")!, name: "Breakfast"),
                 MealPlanCellModel(meal: UIImage(named: "Lunch")!, name: "Lunch"),
                 MealPlanCellModel(meal: UIImage(named: "Dinner")!, name: "Dinner"),
                 MealPlanCellModel(meal: UIImage(named: "cake-slice")!, name: "Dessert")],
                
                //Snacks
                [MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 1"),
                 MealPlanCellModel(meal: UIImage(named: "carrot")!, name: "Snack 2"),
                 MealPlanCellModel(meal: UIImage(named: "biscuits")!, name: "Snack 3")]
                
            ]),
    ]
}
