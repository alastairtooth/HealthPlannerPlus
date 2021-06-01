//
//  TextField.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 4/10/20.
//

import UIKit

class ATTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupField()    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupField()
        
    }
    
    
    private func setupField() {
        
        font                = UIFont(name: K.Font.AvenirRegular, size: 20)
        backgroundColor     = K.Colour.background
        layer.cornerRadius  = frame.size.height/20
        clipsToBounds       = true //If you don't write this, you won't round the box edges
        textColor           = K.Colour.buttonBackBlack

        
        let indentView      = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        leftView            = indentView
        leftViewMode        = .always
        
    }
    
}
