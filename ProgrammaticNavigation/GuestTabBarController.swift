//
//  LoginTabBarController.swift
//  ProgrammaticNavigation
//
//  Created by Sedat on 5.02.2024.
//

import UIKit
 
class GuestTabBarController: UITabBarController { 
  
    override func viewDidLoad() {  
        super.viewDidLoad() 
        configureTabs()
    }
    private func configureTabs(){
        let vc1 = HomeViewController()
        let vc2 = LoginViewController()
        
        //Set tab images
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "person")
        
        //Set title
        vc1.title = "Home"
        vc2.title = "Login"
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemGray6
        
        setViewControllers([nav1, nav2], animated: true)
    }
}
