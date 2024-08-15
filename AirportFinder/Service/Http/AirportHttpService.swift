//
//  AirportHttpService.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

import Alamofire

class AirportHttpService: HttpService {
    var sessionManager: Session = Session.default
    
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest {
        return sessionManager.request(urlRequest).validate(statusCode: 200..<400)
    }
    
    
}
