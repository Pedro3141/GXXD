//
//  RequestViewControl.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/19/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {
    
    @IBOutlet weak var AmountToRequest: UILabel!
    
    @IBAction func Numbers(_ sender: UIButton) {
        AmountToRequest.text = AmountToRequest.text! + String(sender.tag-1)
        
        if sender.tag == 11 // Clear Button
        {
            AmountToRequest.text = " ";
        }
    }
    
    //--> Requests here
    /*
     *  Request money by:
     *      - Sender sends Account ID & PublicKey to Receiver
     *      - Receiver receives request (w/ Sender's Account ID & PublicKey)
     *      - Receiver is prompted of the request to pay (?)
     *
    */
    
    @IBAction func Request2Home(_ sender: Any) {
        self.performSegue(withIdentifier: "Request2HomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

