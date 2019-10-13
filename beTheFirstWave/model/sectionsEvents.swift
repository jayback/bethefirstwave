//
//  sectionsEvents.swift
//  beTheFirstWave
//
//  Created by Macbook on 28/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation


class sectionsEvents {
    
    var sectionName: String
    var allEvents: [event] = []
    
    init (sectionName: String, events: events){
        
        self.sectionName = sectionName
        
        for event in events.allEvents{
            if sectionName == event.disc.rawValue{
                allEvents.append(event)
            }
        }
    }
}
