//
//  PlanCells.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 31/5/21.
//


import Foundation
import UIKit

struct screenAssets {
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .white
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        
        let detailsButton = UIButton()
        detailsButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        detailsButton.setTitle("Plan Details", for: .normal)
        detailsButton.setTitleColor(UIColor.black, for: .normal)
        detailsButton.translatesAutoresizingMaskIntoConstraints = false
        detailsButton.contentHorizontalAlignment = .center
        detailsButton.layer.cornerRadius = 6
        
        let selectorButton = UIButton()
        selectorButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        selectorButton.setTitle("Week Test", for: .normal)
        selectorButton.setTitleColor(UIColor.black, for: .normal)
        selectorButton.translatesAutoresizingMaskIntoConstraints = false
        selectorButton.contentHorizontalAlignment = .center
        selectorButton.layer.cornerRadius = 6
        
        stackView.addArrangedSubview(detailsButton)
        stackView.addArrangedSubview(selectorButton)
        
        return stackView
    }()
    
    fileprivate let selector: UIPickerView = { //fileprivate used so that imageview is only available within the class created
        let selector = UIPickerView()
//        selector.text = "Mon"
//        selector.textAlignment = .center
//        selector.translatesAutoresizingMaskIntoConstraints = false
//        selector.contentMode = .scaleAspectFill
//        selector.clipsToBounds = true
        
        return selector
    }()
}


struct AssetConstraints {
    
    
    func setWeekViewButtonConstraints(dayCollectionView: UICollectionView, weekButton: UIStackView, view: UIView) {
        weekButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        weekButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        weekButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        weekButton.bottomAnchor.constraint(equalTo: dayCollectionView.topAnchor, constant: 0).isActive = true
        
    }
    
    func dayCollectionViewConstraints(dayCollectionView: UICollectionView, mealTable: UICollectionView, weekButton: UIStackView, view: UIView) {
        
        dayCollectionView.topAnchor.constraint(equalTo: weekButton.bottomAnchor, constant: 0).isActive = true
        dayCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        dayCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        dayCollectionView.bottomAnchor.constraint(equalTo: mealTable.topAnchor, constant: 0).isActive = true
        dayCollectionView.heightAnchor.constraint(equalTo: dayCollectionView.widthAnchor, multiplier: 0.1429).isActive = true
    }
    
    func mealCollectionViewConstraints(dayCollectionView: UICollectionView, mealTable: UICollectionView, view: UIView) {
        mealTable.topAnchor.constraint(equalTo: dayCollectionView.bottomAnchor, constant: 0).isActive = true
        mealTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        mealTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        mealTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
    }
    
}

//MARK: - Data for CollectionView Cell

class DateCell: UICollectionViewCell {
    
    var data: dowData? {
        didSet {
            guard let data = data else { return }
            date.text = data.dateDay
            day.text = data.dayOfWeek
        }
    }
    
    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fillEqually
        stackView.layer.cornerRadius = 45
        return stackView
    }()
    
    fileprivate let date: UILabel = { //fileprivate used so that imageview is only available within the class created
        let vDate = UILabel()
        vDate.text = "17"
        vDate.textAlignment = .center
        vDate.translatesAutoresizingMaskIntoConstraints = false
        vDate.contentMode = .scaleAspectFill
        vDate.clipsToBounds = true
        
        return vDate
    }()
    
    
    fileprivate let day: UILabel = { //fileprivate used so that imageview is only available within the class created
        let vDay = UILabel()
        vDay.text = "Mon"
        vDay.textAlignment = .center
        vDay.translatesAutoresizingMaskIntoConstraints = false
        vDay.contentMode = .scaleAspectFill
        vDay.clipsToBounds = true
        
        return vDay
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(stackView)
        stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        stackView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        stackView.addArrangedSubview(day)
//        stackView.addArrangedSubview(date)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


//MARK: - CollectionViewCell for Recipes



class NewRecipeCell: UICollectionViewCell {
    
    var data: TempRecipe? {
        didSet {
            guard let data = data else { return }
            recipeTitle.text = data.recipeName
            backgroundImage.image = data.recipeImage
            
        }
    }
    
    let backgroundImage: UIImageView = {
        let recipeImage = UIImageView()
        recipeImage.translatesAutoresizingMaskIntoConstraints = false
        recipeImage.contentMode = .scaleAspectFill
        recipeImage.clipsToBounds = true
        return recipeImage
    }()
    
    fileprivate let gradient: GradientView = { //fileprivate used so that imageview is only available within the class created
        let gradient = GradientView()
        gradient.translatesAutoresizingMaskIntoConstraints = false
        gradient.contentMode = .scaleAspectFill
        gradient.clipsToBounds = true
        gradient.FirstColor = .black
        return gradient
    }()
    
    
    fileprivate let recipeTitle: UILabel = { //fileprivate used so that imageview is only available within the class created
        let recipeTitle = UILabel()
        recipeTitle.text = "Mon"
        recipeTitle.textAlignment = .left
        recipeTitle.textColor       = .white
        recipeTitle.font = UIFont(name: recipeTitle.font.fontName, size: 20)
        recipeTitle.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        recipeTitle.translatesAutoresizingMaskIntoConstraints = false
        recipeTitle.contentMode = .scaleAspectFill
        recipeTitle.clipsToBounds = true
        
        return recipeTitle
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(backgroundImage)
        backgroundImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        
        addSubview(gradient)
        gradient.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        gradient.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        gradient.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
//        gradient.heightAnchor.constraint(equalTo: backgroundImage.heightAnchor, multiplier: 0.25)
        
        addSubview(recipeTitle)
        recipeTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        recipeTitle.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        recipeTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
//        recipeTitle.heightAnchor.constraint(equalTo: backgroundImage.heightAnchor, multiplier: 0.25)
        
        
        
//        stackView.addArrangedSubview(day)
//        stackView.addArrangedSubview(date)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


