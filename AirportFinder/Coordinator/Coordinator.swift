//
//  Coordinator.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

protocol Coordinator: AnyObject{
    
    var childCoordinator: [Coordinator] { get set }
    
    func start()
}

extension Coordinator {

    func add(coordinator: Coordinator) -> Void {
        childCoordinator.append(coordinator)
    }
    
    func remove(coordinator: Coordinator) -> Void {
        childCoordinator = childCoordinator.filter({ $0 !== coordinator })
    }
}
