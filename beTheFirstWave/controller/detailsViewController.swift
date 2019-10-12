//
//  detailsViewController.swift
//  beTheFirstWave
//
//  Created by Macbook on 27/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class detailsViewController: UIViewController {

    var eventName: String?
    var eventDescriptionText: String?
    
    @IBOutlet weak var eventDescription: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let eventDescriptionText = eventDescriptionText{
            eventDescription.text = eventDescriptionText
        }
        
        userName.text = _userName
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addChangeProgram(_ sender: Any) {
        
        if self.eventName != ""{
        _programName = self.eventName!
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
