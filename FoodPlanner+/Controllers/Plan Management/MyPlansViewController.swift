//
//  MyPlansViewController.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 1/6/21.
//

import UIKit

class MyPlansViewController: UIPageViewController, CustomSegmentedControlDelegate {
    
//    Returns current index postiion of pageviewcontroller (supposedly - not working)
    var pages = [UIViewController]()
    var currentIndex2: Int {
        guard let vc = viewControllers?.first else { return 0 }
        return pages.firstIndex(of: vc) ?? 0
    }
    
    var currentIndex: Int = 1
    
    func change(to index: Int) {
        
        let viewCon = orderedViewControllers[index]
        if index < currentIndex {
            setViewControllers([viewCon], direction: .reverse, animated: true, completion: nil)
            currentIndex -= 1
        }
        else {
            setViewControllers([viewCon], direction: .forward, animated: true, completion: nil)
            currentIndex += 1
        }
    }
    
    
    private func newColoredViewController(page: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: "MyPlans\(page)")
    }

    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newColoredViewController(page: "One"),
                self.newColoredViewController(page: "Two"),
                self.newColoredViewController(page: "Three"),
        ]
    }()

    override func viewDidLoad() {

        super.viewDidLoad()
        
        let codeSegmented = CustomSegmentedControl(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50), buttonTitle: ["Collections","Active","Previous"])
        codeSegmented.backgroundColor = .white
        codeSegmented.delegate = self
        view.addSubview(codeSegmented)
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()

        dataSource = self
        let secondViewController = orderedViewControllers[1]
            setViewControllers([secondViewController], direction: .forward, animated: true, completion: nil)
    }
    
}

extension MyPlansViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }

        let previousIndex = viewControllerIndex - 1

        guard previousIndex >= 0 else {
            
            return nil
            // Use the below line if you want the pages to loop
//            return orderedViewControllers.last
        }

        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        //to make the pages swipe again, uncomment the below
//        return orderedViewControllers[previousIndex]
        return nil

    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }

        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count

        guard orderedViewControllersCount != nextIndex else {
            
            return nil
            
        // Use the below line if you want the pages to loop
//            return orderedViewControllers.first
            
        }

        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        //uncomment the below to make the pages swipe again
//        return orderedViewControllers[nextIndex]
        return nil
    }

}


