//
//  LoginViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 11/27/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit
import stellarsdk

class LoginViewController: UIViewController {
    let keyPair = try! KeyPair.generateRandomKeyPair() //test
    @IBOutlet weak var NameField: UITextField!
    
    @IBAction func HomeViewPressed(_ sender: UIButton) {
        
        let publicData = NSData(bytes: keyPair.publicKey.bytes, length: keyPair.publicKey.bytes.count)
        let privateBytes = keyPair.privateKey?.bytes ?? [UInt8]()
        let privateData = NSData(bytes: privateBytes, length: privateBytes.count)
        
        //User defaults onto 
        UserDefaults.standard.set(NameField.text, forKey: "name") //user's name
        UserDefaults.standard.set(keyPair.accountId, forKey: "AccountId") //account ID
        UserDefaults.standard.set(publicData, forKey: "PublicKey") //Public key
        UserDefaults.standard.set(privateData, forKey: "PrivateKey") //Private key
        
        performSegue(withIdentifier: "Login2HomeSegue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
