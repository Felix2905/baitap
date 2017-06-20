//
//  ViewController.swift
//  Tabbar1
//
//  Created by Tien Dinh on 6/20/17.
//  Copyright © 2017 Tien Dinh. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self
        self.tabBar.barTintColor = UIColor.white
        //self.tabBar.isTranslucent = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = TabOneViewController()
        let tabOneBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "profile_active")?.withRenderingMode(.alwaysOriginal))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwo = TabTwoViewController()
        let tabTwoBarItem2 = UITabBarItem(title: "Add avatar", image: UIImage(named: "add_avatar_white")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "add_avatar")?.withRenderingMode(.alwaysOriginal))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        let tabThree = TabThreeViewController()
        let tabTwoBarItem3 = UITabBarItem(title: "Back", image: UIImage(named: "back_arrow_white")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "back_arrow")?.withRenderingMode(.alwaysOriginal))
        
        tabThree.tabBarItem = tabTwoBarItem3

        
        let tabFour = TabFourViewController()
        let tabTwoBarItem4 = UITabBarItem(title: "Add avatar", image: UIImage(named: "add_avatar_white")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "add_avatar")?.withRenderingMode(.alwaysOriginal))
        
        tabFour.tabBarItem = tabTwoBarItem4
        
        let tabFive = TabFiveViewController()
        let tabTwoBarItem5 = UITabBarItem(title: "Add avatar", image: UIImage(named: "add_avatar_white")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "add_avatar")?.withRenderingMode(.alwaysOriginal))
        
        tabFive.tabBarItem = tabTwoBarItem5
        
        
        self.viewControllers = [tabOne, tabTwo, tabThree, tabFour, tabFive]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}

class TabOneViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.blue
        self.title = "Tab 1"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}




class TabTwoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
        self.title = "Tab 2"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class TabThreeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.brown
        self.title = "Tab 3"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

class TabFourViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.cyan
        self.title = "Tab 4"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

class TabFiveViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.green
        self.title = "Tab 5"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
