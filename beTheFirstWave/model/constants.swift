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

struct globalVariables{

// build levels for the twelve weeks
var buildLevels: [Int] = [10,20,20,25,25,35,45,50,55,60,65]
    

}
