//
//  AirportHttpRouter.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

import Alamofire

enum AirportHttpRouter {
    case getAirports
}

extension AirportHttpRouter: HttpRouter {
    
    var baseUrlString: String {
        return "https://raw.githubusercontent.com/JetSetExpert/airports/master/data/airports.json"
    }
    
    var path: String {
        switch self {
        case .getAirports:
            return "airports.json"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getAirports:
            return .get
        }
    }
    
}
