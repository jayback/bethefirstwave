//
//  eventsTableViewCell.swift
//  beTheFirstWave
//
//  Created by Macbook on 24/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class eventsTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var logo: UIImageView!
    
    
    func setCell (name: String, logo: UIImage)
    {
            self.name.text = name
            self.logo.image = logo
    }

}
