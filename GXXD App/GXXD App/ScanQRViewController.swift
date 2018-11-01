//
//  ScanQRViewController.swift
//  GXXD App
//
//  Created by Pedro Ramirez on 10/21/18.
//  Copyright © 2018 GXXDPAY. All rights reserved.
//

import UIKit
import AVFoundation

class ScanQRViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate{
    
    var video = AVCaptureVideoPreviewLayer()
    
    @IBAction func ScanQR2Home(_ sender: Any) {
        self.performSegue(withIdentifier: "ScanQR2HomeSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

            //Creating session
            let session = AVCaptureSession()
            
            //Define capture device
            let captureDevice = AVCaptureDevice.default(for: AVMediaType.video)
            
            //Grabbing raw data from camera/capture device
            do
            {
                let input = try AVCaptureDeviceInput(device: captureDevice!)
                session.addInput(input)
            }
            catch
            {
                print("Error")
            }
            
            //converting input to output
            let output = AVCaptureMetadataOutput()
            session.addOutput(output)
            
            output.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            
            //Reads QR data
            output.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
            
            //return to user video input (what the camera is seeing)
            video = AVCaptureVideoPreviewLayer(session: session)
            video.frame = view.layer.bounds
            view.layer.addSublayer(video)
            
            session.startRunning()
            
    }
    
    
}
