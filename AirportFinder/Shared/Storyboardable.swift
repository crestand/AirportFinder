//
//  Storyboardable.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

import UIKit


/// Credit : https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps

protocol Storyboardable {
    static func instantiate() -> Self
}

extension Storyboardable where Self: UIViewController {
    
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: className)
    }
}
