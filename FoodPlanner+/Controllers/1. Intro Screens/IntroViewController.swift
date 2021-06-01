//
//  IntroViewController.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 30/5/21.
//

import UIKit

class IntroCell2: UICollectionViewCell {
    @IBOutlet weak var ImageShown: UIImageView!
    @IBOutlet weak var TitleShown: UILabel!
    @IBOutlet weak var ContentShown: UILabel!
}

class IntroViewController: UIViewController {

    @IBOutlet weak var stepperControl: UIPageControl!
    @IBOutlet weak var IntroCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        IntroCollectionView.delegate = self
        IntroCollectionView.dataSource = self

    }
    
    @IBAction func RegisterPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "RegSegue", sender: nil)
    
    }
    
    

}


extension IntroViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        let count = IntroData.Images.count
        
        stepperControl.numberOfPages = count
        stepperControl.isHidden = !(count > 1)
        
       return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let IntroImage = collectionView.dequeueReusableCell(withReuseIdentifier: "IntroCell", for: indexPath) as! IntroCell2
        IntroImage.ImageShown.image =  UIImage(named: IntroData.Images[indexPath.row])
        IntroImage.TitleShown.text = IntroData.Title[indexPath.row]
        IntroImage.ContentShown.text = IntroData.Context[indexPath.row]
        return IntroImage
    }
    
}
    
    extension IntroViewController: UICollectionViewDelegate {
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            //Determines which pagination marker to be in by dividing the width of the entire content by the width of the screen
            stepperControl.currentPage =  Int(round(scrollView.contentOffset.x / scrollView.frame.width))
        }
        
        func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
            stepperControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
        }
    
}

