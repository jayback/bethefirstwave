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
    var events: [event] = []
    
    init (sectionName: String, allEvents: [event]){
        
        self.sectionName = sectionName
        
        for event in allEvents{
            if sectionName == event.disc.rawValue{
                events.append(event)
            }
        }
    }
}
