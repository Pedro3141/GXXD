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
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var EmailField: UITextField!
    
    @IBOutlet weak var CityField: UITextField!
    
    //@IBOutlet weak var CityField: UITextField!
    
    @IBAction func HomeViewPressed(_ sender: UIButton) {
        
        let publicData = NSData(bytes: keyPair.publicKey.bytes, length: keyPair.publicKey.bytes.count)
        let privateBytes = keyPair.privateKey?.bytes ?? [UInt8]()
        let privateData = NSData(bytes: privateBytes, length: privateBytes.count)
        
        //User defaults onto 
        UserDefaults.standard.set(NameField.text, forKey: "Name") //user's first name
        UserDefaults.standard.set(keyPair.accountId, forKey: "AccountId") //account ID
        UserDefaults.standard.set(LastName.text, forKey: "LastName") //user's last name
       UserDefaults.standard.set(EmailField.text, forKey: "Email") // users' email
        UserDefaults.standard.set(CityField.text, forKey: "City") // user's city
        UserDefaults.standard.set(publicData, forKey: "PublicKey") //Public key
        UserDefaults.standard.set(privateData, forKey: "PrivateKey") //Private key
        
        performSegue(withIdentifier: "Login2HomeSegue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}
