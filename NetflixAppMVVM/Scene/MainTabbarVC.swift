//
//  MainTabbarVC.swift
//  NetflixAppMVVM
//
//  Created by Nilgul Cakir on 29.03.2024.
//

import UIKit

class MainTabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        createTabbar()
    }
    
    private func createTabbar(){
        let homeVC = UINavigationController(rootViewController: HomeVC())
        let searchVC = UINavigationController(rootViewController: SearchVC())
        let upcomingVC = UINavigationController(rootViewController: UpcomingVC())
        let downloadVC = UINavigationController(rootViewController: DownloadVC())
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        upcomingVC.tabBarItem.image = UIImage(systemName: "play.circle")
        downloadVC.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        homeVC.title = "Home"
        upcomingVC.title = "Coming Soon"
        searchVC.title = "Top Search"
        downloadVC.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeVC, upcomingVC, searchVC, downloadVC], animated: true)
        
        
    }
}
