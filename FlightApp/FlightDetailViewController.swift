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
        
        var dateString = flightDetail?.departure_date
        let timeFormatter = DateFormatter()
        //set the date format to dateOriginal's date format
        timeFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'.000'"
        timeFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        let flightTime = timeFormatter.date(from: dateString!)
        
        //set the date format to the type of output that is needed
        timeFormatter.dateFormat = "HH:mm a"
        // Convert date to string
        var flightTimeString = timeFormatter.string(from: flightTime ?? Date())
        
        // startDate.text = flightDateString
        startTime.text = flightTimeString
        
        
        cityFrom.text = flightDetail?.departure_airport ?? "--"
        cityFromLong.text = flightDetail?.departure_city ?? "--"
        cityTo.text = flightDetail?.arrival_airport ?? "--"
        cityToLong.text = flightDetail?.arrival_city ?? "--"
        // arrivalDate.text = flightDateString
        //arrivalTime.text = flightTimeString
        
        flightNr.text = flightDetail?.flight_number ?? "--"
        terminal.text = flightDetail?.departure_airport ?? "--"
        gate.text = "--"
        seat.text = "--"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
