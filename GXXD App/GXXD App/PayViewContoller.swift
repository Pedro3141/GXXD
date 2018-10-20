//
//  PayViewContoller.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/19/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {
    
    @IBAction func Pay2HomeButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "Pay2HomeSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

