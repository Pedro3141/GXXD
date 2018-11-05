//
//  ViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/16/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem! //button for side bar
    
    @IBAction func SendRequestViewPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "SendRViewSegue", sender: self)
    }
    
    @IBAction func RequestViewPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "RequestViewSegue", sender: self)
    }
    
    @IBAction func PayViewButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "PayViewSegue", sender: self)
    }
    
    @IBAction func ScanQRPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ScanQRSegue", sender: self)
    }
    
    @IBAction func MyQRPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "MyQRViewSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sideMenus() // side bar pan
        
    }
    
    //function for bringing up side bar
    func sideMenus(){
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController()?.rearViewRevealWidth = 200 //width of sidebar
            //revealViewController()?.rightViewRevealWidth = 160 //if you want side bar for the right (i.e. settings?)
            
            //adds panning gesture for side bar
            view.addGestureRecognizer(self.revealViewController()!.panGestureRecognizer())
        }
    }
	
}

