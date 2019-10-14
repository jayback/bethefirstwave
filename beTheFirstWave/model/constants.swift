//
//  constants.swift
//  beTheFirstWave
//
//  Created by Macbook on 25/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation
var _userId: String = ""
var _userName: String = ""
var _firstName: String = ""
var _programName: String = ""


enum discipline: String, CaseIterable {
    case TRI = "Triathlon", RUN = "Running", SWM = "Swimming"
}
enum distanceUOM: String {
    case KM = "Kilometers", Mtr = "Meters", MLS = "Miles"
}
enum experience: Int {
    case beginner = 1, intermediate = 2, expert = 3
}
enum userType: String {
    case coa = "Coach", ath = "Athlete", admin = "administrator"
}

// build levels for the twelve weeks
var buildLevels: [Double] = [0.20,0.25,0.20,0.25,0.35,0.45,0.65,0.75,0.55,0.40,0.35,0.25]
    

