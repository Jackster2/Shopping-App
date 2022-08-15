//
//  ViewController.swift
//  Shopping App
//
//  Created by Kristoffer Baumgarten on 28/06/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()        
        
        let tab1 = UINavigationController(rootViewController: HomeViewController())
        let tab2 = UINavigationController(rootViewController: SearchViewController())
        let tab3 = UINavigationController(rootViewController: ShoppingBasketsViewController())
        let tab4 = UINavigationController(rootViewController: FavoriteViewController())
        let tab5 = UINavigationController(rootViewController: ProfileViewController())
         
        tab1.tabBarItem.image = UIImage(systemName:"house")
        tab2.tabBarItem.image = UIImage(systemName:"magnifyingglass")
        tab3.tabBarItem.image = UIImage(systemName:"cart")
        tab4.tabBarItem.image = UIImage(systemName:"heart")
        tab5.tabBarItem.image = UIImage(systemName: "person")
        
        tab1.title = "Home"
        tab2.title = "Search"
        tab3.title = "Bag"
        tab4.title = "Favorite"
        tab5.title = "Profile"
        
        tabBar.tintColor = .label  
        
        setViewControllers([tab1,tab2,tab3,tab4,tab5], animated: true)
    }


}

