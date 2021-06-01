//
//  Constants.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 4/10/20.
//

import UIKit

struct K {
    
    static let registerSegue    = "registerSegue"   //movement from register to main
    static let loginSegue       = "loginSegue"      //movement from login to main
    static let loginPressed     = "loginPressed"    //movement from register to login
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "PlanCell"
    static let collectionCell = "DateCell"
    
    
    struct Colour {
        static let background = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00) // #f1f3f8 LIGHTEST
        static let background2 = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00) // #d6e0f0
        static let link =  UIColor(red: 0.55, green: 0.58, blue: 0.67, alpha: 1.00)  //8d93ab
        static let fontDarkBack = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00) // #FFFFFF WHITE
        static let buttonBackPink = UIColor(red: 0.93, green: 0.22, blue: 0.58, alpha: 1.00) //#EE3893 PINK
        static let buttonBackBlack = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 84) // #000000 Alpha 84% (GREY)
    }
    
    struct Font {
        static let AvenirHeavy = "AvenirNextCondensed-Heavy"
        static let AvenirMediumItalic = "AvenirNextCondensed-MediumItalic"
        static let AvenirRegular = "AvenirNextCondensed-Regular"
        static let AvenirUltraLightItalic = "AvenirNextCondensed-UltraLightItalic"
        static let AvenirMedium = "AvenirNextCondensed-Medium"
        static let AvenirHeavyItalic = "AvenirNextCondensed-HeavyItalic"
        static let AvenirDemiBoldItalic = "AvenirNextCondensed-DemiBoldItalic"
        static let AvenirBold = "AvenirNextCondensed-Bold"
        static let AvenirDemiBold = "AvenirNextCondensed-DemiBold"
        static let AvenirBoldItalic = "AvenirNextCondensed-BoldItalic"
        static let AvenirItalic = "AvenirNextCondensed-Italic"
        static let AvenirUltraLight = "AvenirNextCondensed-UltraLight"
    }
    
    
}
