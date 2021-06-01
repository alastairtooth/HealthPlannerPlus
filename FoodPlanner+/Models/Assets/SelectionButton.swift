//
//  SelectionButton.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 4/10/20.
//

import UIKit

class ATSelectionButton: UIButton {
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        setTitleColor(K.Colour.background, for: .normal)
        backgroundColor     = K.Colour.buttonBackPink
        titleLabel?.font    = UIFont(name: K.Font.AvenirBold, size: 20)
        layer.cornerRadius  = frame.size.height/3
    }
    
    
}
