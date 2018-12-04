//
//  ProfileViewController.swift
//  GXXD App
//
//  Created by Athena  Ghilarducci on 12/2/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var firstName: UILabel!
    @IBOutlet var lastName: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var city: UILabel!
    @IBOutlet var state: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // populates the labels from input on logon page
        firstName.text = UserDefaults.standard.value(forKey: "name") as? String
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
