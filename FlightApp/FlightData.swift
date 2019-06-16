//
//  FlightData.swift
//  FlightApp
//
//  Created by KRECSIK on 16/6/19.
//  Copyright © 2019 Kitti. All rights reserved.
//

import Foundation

struct FlightData: Decodable {
    let id: Int?
    let departure_date: String?
    let airline_code: String?
    let flight_number: String?
    let departure_city: String?
    let departure_airport: String?
    let arrival_city: String?
    let arrival_airport: String?
    let scheduled_duration: String?
    let arrival_date: String?
}
