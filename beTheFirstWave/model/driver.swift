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
    var allEvents: [event] = []
//    var profile: profile?
    
    init (){
        
        let halfI = event( disc: .TRI, distanceUOM: .MLS, name: "Half Ironman", swimTdis:85,rideTdis: 20, runTdis: 5, eventImage: UIImage(named: "halfIronman.png")!)
        allEvents.append(halfI)
        let fullI = event( disc: .TRI, distanceUOM: .MLS, name: "Ironman", swimTdis:85,rideTdis: 20, runTdis: 5, eventImage: UIImage(named: "ironman.png")!)
        allEvents.append(fullI)
        let fourHun = event( disc: .SWM, distanceUOM: .KM, name: "Swim 400", swimTdis:0.4,rideTdis: 0, runTdis: 0, eventImage: UIImage(named: "ironman.png")!)
        allEvents.append(fourHun)
        let mara = event( disc: .RUN, distanceUOM: .MLS, name: "Marathon", swimTdis:0,rideTdis: 0, runTdis: 42.2, eventImage: UIImage(named: "ironman.png")!)
        allEvents.append(mara)
    
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
