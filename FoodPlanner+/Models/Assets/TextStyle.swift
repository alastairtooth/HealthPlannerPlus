//
//  TextStyle.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 4/10/20.
//

import UIKit

class ATHeaderStyle: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHeader()    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupHeader()
    }
    
    private func setupHeader() {
        font        = UIFont(name: K.Font.AvenirBold, size: 26)
        textColor   = K.Colour.fontDarkBack
    }
}

class ATBodyStyle: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBody()    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupBody()
    }
    
    private func setupBody() {
        font        = UIFont(name: K.Font.AvenirRegular, size: 18)
        textColor   = K.Colour.fontDarkBack
    }
}

class ATBody2Style: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBody2()    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupBody2()
    }
    
    private func setupBody2() {
    
//        font        = UIFont(name: K.Font.AvenirBold, size: 18)!
//        textColor   = K.Colour.button
//        attributedText = NSAttributedString(string: "Text", attributes: [.underlineStyle: NSUnderlineStyle.single.rawValue]) //Underlines text
    }
}
