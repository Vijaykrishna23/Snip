//
//  SignupVC.swift
//  MyFirstApp
//
//  Created by cloud on 17/01/22.
//

import UIKit

class SignupVC: UIViewController {
    
    var receivedData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        print(receivedData ?? "")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

}
