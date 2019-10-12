//
//  event.swift
//  beTheFirstWave
//  Created by Macbook on 25/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation
import UIKit


struct event {
    let disc: discipline
    let distanceUOM: distanceUOM
    let name: String
    let swimTdis: Double
    let rideTdis: Double
    let runTdis: Double
    var eventImage: UIImage
    
    
    
    init (disc: discipline, distanceUOM: distanceUOM, name: String, swimTdis: Double, rideTdis: Double, runTdis: Double, eventImage: UIImage) {
        self.disc = disc
        self.distanceUOM = distanceUOM
        self.name = name
        self.swimTdis = swimTdis
        self.runTdis = runTdis
        self.rideTdis =  rideTdis
        self.eventImage = eventImage
    }
    
    func shortEventSummary () -> String {
        let total: Double = swimTdis + runTdis
        let string = "This event type is a " + (disc.rawValue) + " and is called a " + (name) +
            ".\n It has a total distance of \(total) " + (distanceUOM.rawValue) + "\n It consists of a run of \(runTdis) \n a Ride of \(rideTdis) and a Swim of \(swimTdis) ."
        return string
    }
    
    func getImageByname (name: String) -> UIImage{
        return self.eventImage
    }
}

