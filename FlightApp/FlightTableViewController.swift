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
    }
    
    func getJsonFromUrl() {
        let urlString = "https://bit.ly/2MBaibj"
        guard let url = URL(string: urlString) else {
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let flightDataAll = try decoder.decode([FlightData].self, from: data)
            flightData = [FlightData()]
            flightData?[0] = flightDataAll[0]
            flightData?.append(flightDataAll[1])
            flightData?.append(flightDataAll[2])
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "flightCell", for: indexPath) as? FlightTableViewCell
        if let flight = flightData {
            cell?.flightTo.text = "Flight to " + flight[indexPath.row].arrival_city!
            cell?.cityFrom.text = flight[indexPath.row].departure_city
            cell?.startTime.text = flight[indexPath.row].departure_date
            cell?.cityFromLong.text = flight[indexPath.row].departure_city
            cell?.duration.text = flight[indexPath.row].scheduled_duration
            cell?.cityTo.text = flight[indexPath.row].arrival_city
            cell?.arrivalTime.text = flight[indexPath.row].arrival_date
            cell?.cityToLong.text = flight[indexPath.row].arrival_city
        }
        return cell!
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
