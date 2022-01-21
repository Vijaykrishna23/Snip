//
//  ViewController.swift
//  MyFirstApp
//
//  Created by cloud on 17/01/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var usernameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear")
        
    }

    @IBAction func loginAction(_ sender: Any) {
       /* let username = usernameTF.text ?? ""
        let password = passwordTF.text ?? ""
        
        if(username.count > 0 && username == "abc" &&
           password.count > 0 && password == "abc") {
            
            
            let objsignupVC = self.storyboard?.instantiateViewController(identifier: "SignupVC") as? SignupVC
            
            if let objsignupVC = objsignupVC {
                objsignupVC.receivedData = username
                
                self.navigationController?.pushViewController(objsignupVC, animated: true)
            }
        } else {
            print("check  username/password")
        }*/
    }
    
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 1 {
            print("username field")
        }
        
        if textField.tag == 2 {
            print("password field")
        }
        
        // stopping from editing after pressing return
        self.view.endEditing(true)
        
        return true;
    }
    
}
