//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Elif Pamuk on 27.11.2023.
//

import UIKit

/// - Controller to house and root tab controllers
final class RMTabViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
     
      let characterVC = RMCharacterViewController()
      let locationVC = RMCharacterViewController()
      let episodeVC = RMEpisodeViewController()
      let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
         
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: episodeVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "figure.stand"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "sparkles.tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        let navArray = [nav1, nav2, nav3, nav4]
        
        for nav in navArray {
            nav.navigationBar.prefersLargeTitles = true
        }
        setViewControllers(navArray, animated: true)
    }

}

