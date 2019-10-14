//
//  program.swift
//  beTheFirstWave
//
//  Created by Macbook on 26/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation



class program{
    var evt: event
    var weekNumber: Int?
    var isWeekly: Bool
    var isDaily: Bool
    let durationWeeks: Int = 12
    var weeklys: [program] = []
    var dailys: [program] = []
    let swimTdis: Double
    let rideTdis: Double
    let runTdis: Double

    init (evt: event, isWeekly: Bool, isDaily: Bool, inWeekNumber: Int) {
        self.evt = evt
        if inWeekNumber > 0 {
            self.weekNumber = inWeekNumber
        }
        self.isDaily = isDaily
        self.isWeekly = isWeekly
        if isWeekly{
            print ("week number is ------ \(inWeekNumber)")
            
            self.swimTdis = evt.swimTdis * buildLevels[inWeekNumber-1]
            self.rideTdis = evt.rideTdis * buildLevels[inWeekNumber-1]
            self.runTdis = evt.runTdis * buildLevels[inWeekNumber-1]
        }
        else{
            self.swimTdis = evt.swimTdis
            self.rideTdis = evt.rideTdis
            self.runTdis = evt.runTdis
            var i = 1
            while  i <= durationWeeks{
                weeklys.append(program(evt: evt, isWeekly: true, isDaily: false, inWeekNumber: i))
                i = i + 1
            }
        }

        
        
    }
}
