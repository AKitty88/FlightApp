//
//  FlightData.swift
//  FlightApp
//
//  Created by KRECSIK on 16/6/19.
//  Copyright © 2019 Kitti. All rights reserved.
//

import Foundation

struct FlightData: Decodable {
    var id: Int?
    var departure_date: String?
    var airline_code: String?
    var flight_number: String?
    var departure_city: String?
    var departure_airport: String?
    var arrival_city: String?
    var arrival_airport: String?
    var scheduled_duration: String?
    var arrival_date: String?
    
//    required init(from decoder:Decoder) throws {
//        //
//    }
}
