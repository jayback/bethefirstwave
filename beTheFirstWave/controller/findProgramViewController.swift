//
//  findProgramViewController.swift
//  beTheFirstWave
//
//  Created by Macbook on 30/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class findProgramViewController: UIViewController {

    @IBOutlet weak var programButton: UIButton!
    @IBOutlet weak var userName: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if _programName == ""{
            programButton.isHidden = true
        }
        else{
            programButton.isHidden = false
        }
        print ("user name is --" + _userName)
        if (_userName != ""){
            userName.text = _userName
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
