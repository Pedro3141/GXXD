//
//  MyQRViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/21/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import stellarsdk
import UIKit

class MyQRViewController: UIViewController{
    @IBOutlet weak var QRCodeContainer: UIImageView!
    
    let keyPair = try! KeyPair.generateRandomKeyPair() //test
    
    //Generate QR code from account
    func GenerateQR() {
        if let textToConvert = String(keyPair.accountId).data(using: .ascii) {
            let filter = CIFilter(name: "CIQRCodeGenerator") //standard QR filter
            filter?.setValue(textToConvert, forKey:"inputMessage") //message
            let transform = CGAffineTransform(scaleX: 10, y: 10) //crisping image
            let MyQrOut = UIImage(ciImage: (filter?.outputImage?.transformed(by: transform))!)
            QRCodeContainer.image = MyQrOut
            //sender.isHidden = true
            }
        
    }//Function generates a QRCode from the variable WalletID passed in from stellar API
    
    @IBAction func MyQR2Home(_ sender: Any) {
        self.performSegue(withIdentifier: "MyQR2HomeSegue", sender: self)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GenerateQR()
    }
    
    
}

