//
//  programTableViewCell.swift
//  beTheFirstWave
//
//  Created by Macbook on 30/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class programTableViewCell: UITableViewCell {

    
    @IBOutlet weak var swimDistance: UILabel!
    @IBOutlet weak var rideDistance: UILabel!
    @IBOutlet weak var runDistance: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setCell (swimDistance: Double, rideDistance: Double, runDistance: Double){
        self.swimDistance.text = String(swimDistance)
        self.rideDistance.text = String(rideDistance)
        self.runDistance.text  = String(runDistance)
    
    }

}
