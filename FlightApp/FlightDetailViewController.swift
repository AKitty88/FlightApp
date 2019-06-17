//
//  FlightDetailViewController.swift
//  FlightApp
//
//  Created by KRECSIK on 17/6/19.
//  Copyright © 2019 Kitti. All rights reserved.
//

import UIKit

class FlightDetailViewController: UIViewController {

    @IBOutlet weak var cityFrom: UILabel!
    @IBOutlet weak var cityFromLong: UILabel!
    @IBOutlet weak var startDate: UILabel!
    @IBOutlet weak var startTime: UILabel!
    @IBOutlet weak var cityTo: UILabel!
    @IBOutlet weak var cityToLong: UILabel!
    @IBOutlet weak var arrivalDate: UILabel!
    @IBOutlet weak var arrivalTime: UILabel!
    
    @IBOutlet weak var flightNr: UILabel!
    @IBOutlet weak var terminal: UILabel!
    @IBOutlet weak var gate: UILabel!
    @IBOutlet weak var seat: UILabel!
    
    var flightDetail: FlightData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityFrom.text = flightDetail?.departure_airport ?? "--"
        cityFromLong.text = flightDetail?.departure_city ?? "--"
        startDate.text = flightDetail?.departure_date ?? "--"
        startTime.text = flightDetail?.departure_date ?? "--"
        cityTo.text = flightDetail?.arrival_airport ?? "--"
        cityToLong.text = flightDetail?.arrival_city ?? "--"
        arrivalDate.text = flightDetail?.arrival_date ?? "--"
        arrivalTime.text = flightDetail?.arrival_date ?? "--"
        
        flightNr.text = flightDetail?.flight_number ?? "--"
        terminal.text = flightDetail?.departure_airport ?? "--"
        gate.text = "--"
        seat.text = "--"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
