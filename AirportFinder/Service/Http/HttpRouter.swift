//
//  HttpRouter.swift
//  AirportFinder
//
//  Created by Eren Koç on 7.08.2024.
//

import Alamofire
import Foundation

protocol HttpRouter {
    var baseUrlString: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders? { get }
    var parameters: Parameters? { get }
    func body() throws -> Data?
    
    func request(usingHttpService service: HttpService) throws -> DataRequest
}

extension HttpRouter {
    var parameters: Parameters? { return nil }
    func body() throws -> Data? { return nil }
    var headers: HTTPHeaders? { return nil }
    
    func asUrlRequest() throws -> URLRequest{
        var url = try baseUrlString.asURL()
        url.appendingPathComponent(path)
        
        var request = try URLRequest(url: url, method: method, headers: headers)
        request.httpBody = try body()
        
        return request
    }
    
    func request(usingHttpService service: HttpService) throws -> DataRequest {
        return try service.request(asUrlRequest())
    }
}
