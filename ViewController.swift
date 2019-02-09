//
//  ViewController.swift
//  coreml_camera
//
//  Created by aoi haru on 2/9/19.
//  Copyright © 2019 aoi haru. All rights reserved.
//

import UIKit

import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //start up the camera
        
        let captureSession = AVCaptureSession()
        guard let captureDevice =
            AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        
        captureSession.addInput(input)
        
        captureSession.startRunning()
    }


}

