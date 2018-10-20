//
//  SendRequestViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/19/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class SendRViewController: UIViewController {
    
    @IBAction func SendR2Home(_ sender: Any) {
        self.performSegue(withIdentifier: "SendR2HomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}
