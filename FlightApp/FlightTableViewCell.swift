//
//  FlightTableViewCell.swift
//  FlightApp
//
//  Created by KRECSIK on 16/6/19.
//  Copyright © 2019 Kitti. All rights reserved.
//

import UIKit

class FlightTableViewCell: UITableViewCell {
    
    @IBOutlet weak var flightTo: UILabel!
    @IBOutlet weak var cityFrom: UILabel!
    @IBOutlet weak var startTime: UILabel!
    @IBOutlet weak var cityFromLong: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var cityTo: UILabel!
    @IBOutlet weak var arrivalTime: UILabel!
    @IBOutlet weak var cityToLong: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
