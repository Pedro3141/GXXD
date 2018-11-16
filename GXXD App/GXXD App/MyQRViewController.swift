//
//  MyQRViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/21/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit


class MyQRViewController: UIViewController{
    @IBOutlet weak var QRCodeContainer: UIImageView!
    
    var WalletID = "Wallet TEst Here" //Set WalletID = WalletKey created in Stellar
    
    @IBAction func GenerateQR(_ sender: UIButton) {
        if let textToConvert =
            WalletID.data(using: .ascii) {
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(textToConvert, forKey:"inputMessage")
            let transform = CGAffineTransform(scaleX: 10, y: 10)
            let MyQrOut = UIImage(ciImage: (filter?.outputImage?.transformed(by: transform))!)
            QRCodeContainer.image = MyQrOut
            sender.isHidden = true
        }
        
    }//Function generates a QRCode from the variable WalletID passed in from stellar API
    
    @IBAction func MyQR2Home(_ sender: Any) {
        self.performSegue(withIdentifier: "MyQR2HomeSegue", sender: self)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

