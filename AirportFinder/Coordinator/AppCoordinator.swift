//
//  AppCoordinator.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

import UIKit

class AppCoordinator: BaseCoordinator{
    
    private let window: UIWindow
    private let navigationController: UINavigationController = {
        let navigationController = UINavigationController()

        let navigationBar = navigationController.navigationBar
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        //navigationBar.barTintColor = UIColor(red: 255.0/255.0, green: 125.0/255.0, blue: 0.0, alpha: 1.0)
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Avenir-Medium", size: 28.0)!,
                                              NSAttributedString.Key.foregroundColor: UIColor.white]
        //navigationBar.isTranslucent = false
        return navigationController
    }()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
        self.add(coordinator: searchCityCoordinator)
        
        searchCityCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
