//
//  AirportModel.swift
//  AirportFinder
//
//  Created by Hamza Eren Koc on 14.08.2024.
//

import Foundation

// MARK: - AirportResponseElement

struct AirportModel: Codable {
    var id, ident, type, name: String?
    var latitudeDeg, longitudeDeg, elevationFt, continent: String?
    var isoCountry, isoRegion, municipality, scheduledService: String?
    var gpsCode, iataCode, localCode, homeLink: String?
    var wikipediaLink: String?
    var keywords: String?

    enum CodingKeys: String, CodingKey {
        case id, ident, type, name
        case latitudeDeg = "latitude_deg"
        case longitudeDeg = "longitude_deg"
        case elevationFt = "elevation_ft"
        case continent
        case isoCountry = "iso_country"
        case isoRegion = "iso_region"
        case municipality
        case scheduledService = "scheduled_service"
        case gpsCode = "gps_code"
        case iataCode = "iata_code"
        case localCode = "local_code"
        case homeLink = "home_link"
        case wikipediaLink = "wikipedia_link"
        case keywords
    }
}

extension AirportModel: Equatable {
    static func == (lhs: AirportModel, rhs: AirportModel) -> Bool {
        return lhs.id == rhs.id
    }
}

extension AirportModel: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

typealias AirportsResponse = [AirportModel]
