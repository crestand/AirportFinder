//
//  HttpService.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

import Alamofire

protocol HttpService {
    var sessionManager: Session { get set }
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest
}
