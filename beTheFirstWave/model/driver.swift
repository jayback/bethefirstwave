//
//  File.swift
//  beTheFirstWave
//
//  Created by Macbook on 27/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation
import UIKit


class driver {
    
    var allEvents: events = events()
//    var profile: profile?
    var programName = _programName
    var myProgram: program?
    
    init (){
        
        // THESE CAN EVENTUALLY COME FROM A DATABASE
        let halfI = event( disc: .TRI, distanceUOM: .KM, name: "Half Ironman", swimTdis:1.9,rideTdis: 90, runTdis: 21.1, eventImage: UIImage(named: "halfIronman.png")!)
        allEvents.addEvent(event: halfI)
        let fullI = event( disc: .TRI, distanceUOM: .KM, name: "Ironman", swimTdis:3.8,rideTdis: 180, runTdis: 42.2, eventImage: UIImage(named: "ironman.png")!)
        allEvents.addEvent(event: fullI)
        let fourHun = event( disc: .SWM, distanceUOM: .KM, name: "Swim 400", swimTdis:0.4,rideTdis: 0, runTdis: 0, eventImage: UIImage(named: "ironman.png")!)
        allEvents.addEvent(event: fourHun)
        let mara = event( disc: .RUN, distanceUOM: .MLS, name: "Marathon", swimTdis:0,rideTdis: 0, runTdis: 42.2, eventImage: UIImage(named: "ironman.png")!)
        allEvents.addEvent(event: mara)
        if (programName != "") {
            if let event =  allEvents.getEventByName(name: programName){
                self.myProgram = program(evt: event, isWeekly: false, isDaily: false, inWeekNumber: 0)
                
                for i in 0..<12{
                    if let distance = self.myProgram?.weeklys[i].runTdis {
                        print ("the weekly run distance is --- \(distance)")
                    }
                    
                }
               
            }
            print (programName)
        }
    
    }
    
    
    func loginCredetials (user: String, pass: String) -> Bool{
        //  f empty do not procees
        let email = user
        let password = pass
        let queryType = "login"
        
        if email == "" || password == ""{
            return false
        }
        else{
            let semaphore = DispatchSemaphore(value: 0)
            var responseData = "false"
            
            let url = "https://www.azasel.com/bethefirstwave/dbRequests/ajax_request_pingAzasel.php"
            let request = NSMutableURLRequest(url: NSURL(string: url)! as URL)
            request.httpMethod = "POST"
            let dataBody = "email=" + (email) + " &password=" + (password) + "&queryType=" + (queryType)
            request.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
            request.httpBody = dataBody.data(using: String.Encoding.utf8)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest, completionHandler:  { data, response, error in
                
                if let contents = data {
                    responseData = String(data: contents, encoding: .utf8)!
                    print("responseString = \(String(describing: responseData))")
                    print ("data was gaurdedd into contents")
                    print (contents)
                    do{
                        print ("in do")
                        let jsonData = try JSONSerialization.jsonObject(with: contents, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                            print (jsonData)
                        if let _firstName = jsonData["first"] as? String { print (_firstName) }
                        if let _userId = jsonData["userId"] as? String { print (_userId) }
                        responseData = "true"
                    }
                    catch let err {print (err.localizedDescription)}
                    
                }else{return}
                semaphore.signal()
                
            })
            task.resume()
            semaphore.wait()
    
            if responseData == "true"{
                
               return true
            }
        }
        return false
    }
}
