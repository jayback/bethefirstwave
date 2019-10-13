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
    var isWeekly: Bool
    var isDaily: Bool
    let durationWeeks: Int = 12
    var weeklys: [program] = []
    let swimTdis: Double
    let rideTdis: Double
    let runTdis: Double

    init (evt: event, isWeekly: Bool, isDaily: Bool) {
        self.evt = evt
        self.isDaily = isDaily
        self.isWeekly = isWeekly
        if isWeekly{
            self.swimTdis = evt.swimTdis/Double(durationWeeks)
            self.rideTdis = evt.rideTdis/Double(durationWeeks)
            self.runTdis = evt.runTdis/Double(durationWeeks)
        }
        else{
            self.swimTdis = evt.swimTdis
            self.rideTdis = evt.rideTdis
            self.runTdis = evt.runTdis
        }

        for week in 0...12{
            self.weeklys[week] = program(evt: evt, isWeekly: true, isDaily: false)
        }
        //print ("the weekly ride distance is --- \(weeklys[1].rideTdis)")
    }
}
