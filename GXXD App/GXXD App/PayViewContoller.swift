//
//  PayViewContoller.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/19/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {
    
    @IBOutlet weak var AmountToPay: UILabel!
    
    //Number buttons have a tag number+1, 1 == 2, 0 == 1
    @IBAction func Numbers(_ sender: UIButton)
    {
        AmountToPay.text = AmountToPay.text! + String(sender.tag-1)
    }
    @IBAction func Pay2HomeButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "Pay2HomeSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

