//
//  beTheFirstWaveViewModel.swift
//  beTheFirstWave
//
//  Created by Macbook on 27/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation


class viewModel{
    
    var model: driver
    
    init (){
        self.model = driver()
    }

    
    func tableViewSectionArray() -> [sectionsEvents]
    {
        var returnArray: [sectionsEvents] = []
        
        for event in discipline.allCases
        {
            let tempObject = sectionsEvents(sectionName: event.rawValue, events: self.model.allEvents)
            returnArray.append(tempObject)
        }
        return returnArray
    }
    
}
