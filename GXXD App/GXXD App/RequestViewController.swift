//
//  RequestViewControl.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/19/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {
    
    @IBAction func Request2Home(_ sender: Any) {
        self.performSegue(withIdentifier: "Request2HomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

