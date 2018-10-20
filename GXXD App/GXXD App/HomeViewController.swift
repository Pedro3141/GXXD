//
//  ViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/16/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func SendRequestViewPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "SendRViewSegue", sender: self)
    }
    
    @IBAction func RequestViewPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "RequestViewSegue", sender: self)
    }
    
    @IBAction func PayViewButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "PayViewSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

	
}

