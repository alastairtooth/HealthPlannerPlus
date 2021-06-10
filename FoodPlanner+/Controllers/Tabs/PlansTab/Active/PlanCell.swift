//
//  PlanCell.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 31/5/21.
//

import UIKit

class PlanCell: UITableViewCell {
    
    @IBOutlet weak var cardBacking: UIImageView!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var planTitle: UILabel!
    @IBOutlet weak var startDate: UILabel!
    @IBOutlet weak var endDate: UILabel!
    @IBOutlet weak var alertMessage: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        planTitle.numberOfLines = 0
        planTitle.sizeToFit()
        
        recipeImage.layer.cornerRadius = recipeImage.frame.size.height / 25
        editButton.layer.cornerRadius = editButton.frame.size.height / 2
        
        cardBacking.layer.shadowColor = UIColor.black.cgColor
        cardBacking.layer.shadowOffset = CGSize(width: 0, height: 2)
        cardBacking.layer.shadowOpacity = 0.6
        cardBacking.layer.shadowRadius = 3.0
        cardBacking.clipsToBounds = false
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
