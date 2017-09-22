//
//  TabBarViewController.swift
//  SafeNeck
//
//  Created by 박태준 on 2017. 9. 23..
//  Copyright © 2017년 stac2017. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = DailyReportViewController()
        let tabOneBarItem = UITabBarItem(title: "Daily Report", image: UIImage(named: "ic_report_off"), selectedImage: UIImage(named: "ic_report_on"))
        
        tabOne.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwo = MainViewController()
        let tabTwoBarItem = UITabBarItem(title: "Main", image: UIImage(named: "ic_main_off"), selectedImage: UIImage(named: "ic_main_on"))
        
        tabTwo.tabBarItem = tabTwoBarItem
        
        // Create Tab Three
        let tabThree = OptionViewController()
        let tabThreeBarItem = UITabBarItem(title: "Option", image: UIImage(named: "ic_main_off"), selectedImage: UIImage(named: "ic_main_on"))
        
        tabThree.tabBarItem = tabThreeBarItem
        
        self.viewControllers = [tabOne, tabTwo, tabThree]
        self.tabBarController?.selectedIndex = 1
        self.tabBar.backgroundColor = UIColor(red: 31/255, green: 183/255, blue: 149/255, alpha: 1)
    }

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected", viewController.title ?? "Ureka")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
