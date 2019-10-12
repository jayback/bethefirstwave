//
//  LoginViewController.swift
//  beTheFirstWave
//
//  Created by Macbook on 18/9/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var VM = viewModel()

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let im = UIImage(named: "logo.png")
        //self.view.backgroundColor=UIColor(patternImage: im!)
        
        
    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    // stop any segue unless it meets requirements
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // check where the segue is going and triggers credential check if
        // a going to login success and permits register and blocks anything else
        if identifier   == "loginSuccess"{
            guard let username: String = self.userName.text else {return false}
            guard let password: String = self.password.text else {return false}
            let result: Bool = VM.model.loginCredetials(user: username, pass: password)
            if (result.description == "false"){
                errorLabel.text = "Login Error"
                return false
            }else{
                errorLabel.text = ""
                return true
            }
            // if its not login and is a register go attemp registration
        }else if identifier   == "register"{
            return true
            // if it is neither a login in or register do not perform segue
        }else{
            return false
        }
    }
}
