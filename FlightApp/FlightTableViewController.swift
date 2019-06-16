//
//  FlightTableViewController.swift
//  FlightApp
//
//  Created by KRECSIK on 16/6/19.
//  Copyright © 2019 Kitti. All rights reserved.
//

import UIKit

class FlightTableViewController: UITableViewController {

    var flightData: [FlightData]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getJsonFromUrl()
        
//      let flight = FlightData()
//      flight.id = jsonResult["id"] as? NSInteger
//      flight.departure_date = jsonResult["departure_date"] as? Date
//      flight.airline_code = jsonResult["airline_code"] as? NSString
//      flight.flight_number = jsonResult["flight_number"] as? NSString
//      flight.departure_city = jsonResult["departure_city"] as? NSString
//      flight.departure_airport = jsonResult["departure_airport"] as? NSString
//      flight.arrival_city = jsonResult["arrival_city"] as? NSString
//      flight.arrival_airport = jsonResult["arrival_airport"] as? NSString
//      flight.scheduled_duration = jsonResult["scheduled_duration"] as? NSString
//      flight.arrival_date = jsonResult["arrival_date"] as? Date
//
//      flightData?.append(flight)
    }
    
    func getJsonFromUrl() {
        let urlString = "https://bit.ly/2MBaibj"
        guard let url = URL(string: urlString) else {
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let flights = try decoder.decode([FlightData].self, from: data)
            print ("flights: ", flights)
        } catch {
            print("ERROR: ", error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let numberOfFlights = flightData?.count {
            return numberOfFlights
        } else {
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "flightCell", for: indexPath)
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
