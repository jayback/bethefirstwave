//
//  events.swift
//  beTheFirstWave
//
//  Created by Macbook on 27/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation


class events {
    var allEvents: [event]
 
    init (){
    allEvents = []
    }

    func addEvent (event: event) {
        allEvents.append(event)
    }
    

    func getEventByName (name: String) -> event?{
        
        for event in self.allEvents{
            if event.name == name{
                return event
            }
        }
        return nil
    }
}
