//
//  TransactionViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 11/21/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import Foundation
import UIKit
import stellarsdk

class TransactionViewController: UIViewController {
    
    @IBAction func Transaction2Home(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Transaction2HomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

