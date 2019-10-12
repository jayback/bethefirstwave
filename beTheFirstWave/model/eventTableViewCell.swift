//
//  eventTableViewCell.swift
//  beTheFirstWave
//
//  Created by Macbook on 24/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class eventTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var lab: UILabel!
    
    
    
    func setLab (text: String){
        self.lab.text = text
    }
    
    
    
    
}
