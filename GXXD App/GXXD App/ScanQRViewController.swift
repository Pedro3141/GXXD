//
//  ScanQRViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/21/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class ScanQRViewController: UIViewController {
    
    @IBAction func ScanQR2Home(_ sender: Any) {
        self.performSegue(withIdentifier: "ScanQR2HomeSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}
