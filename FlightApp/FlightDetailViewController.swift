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
        
        let delimiter = ", "
        var arrivalCityToken = flightDetail?.arrival_city?.components(separatedBy: delimiter)
        var departureCityToken = flightDetail?.departure_city?.components(separatedBy: delimiter)
        
        cityFrom.text = flightDetail?.departure_airport ?? "--"
        cityFromLong.text = (departureCityToken?[0])!
        cityTo.text = flightDetail?.arrival_airport ?? "--"
        cityToLong.text = (arrivalCityToken?[0])!
        flightNr.text = flightDetail?.flight_number ?? "--"
        terminal.text = flightDetail?.airline_code ?? "--"
        gate.text = "--"
        seat.text = "--"
        
        // Converting departure_date to flightTimeString and flightDateString
        var dateString = flightDetail?.departure_date
        let dateFormatter = DateFormatter()
        //set the date format to dateOriginal's date format
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'.000'"
        // set locale to en_US_POSIX
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        var flightTime = dateFormatter.date(from: dateString!)
        
        //set the date format to the type of output that is needed
        dateFormatter.dateFormat = "HH:mm a"
        // Convert date to string
        var flightTimeString = dateFormatter.string(from: flightTime ?? Date())
        startTime.text = flightTimeString

        dateFormatter.dateFormat = "E, d MMM"
        // Convert date to string
        var flightDateString = dateFormatter.string(from: flightTime ?? Date())
        startDate.text = flightDateString
        
        // Converting arrival_date to flightTimeString and flightDateString
        dateString = flightDetail?.arrival_date
        //set the date format to dateOriginal's date format
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'.000'"
        // set locale to en_US_POSIX
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        flightTime = dateFormatter.date(from: dateString!)
        
        //set the date format to the type of output that is needed
        dateFormatter.dateFormat = "HH:mm a"
        // Convert date to string
        flightTimeString = dateFormatter.string(from: flightTime ?? Date())
        arrivalTime.text = flightTimeString
        
        dateFormatter.dateFormat = "E, d MMM"
        // Convert date to string
        flightDateString = dateFormatter.string(from: flightTime ?? Date())
        arrivalDate.text = flightDateString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
