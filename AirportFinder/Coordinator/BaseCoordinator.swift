//
//  BaseCoordinator.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

class BaseCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    func start() {
        fatalError("Children must implement 'start'.")
    }
}
