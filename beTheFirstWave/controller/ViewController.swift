//
//  ViewController.swift
//  beTheFirstWave
//
//  Created by Macbook on 18/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //      load potential events - need to be a database call in future
//      Half Ironman
        
        print ("tst")
        performSegue(withIdentifier: "pushLogin", sender: self)
        
        
      
    }


}

