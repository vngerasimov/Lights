//
//  ViewController.swift
//  Lights
//
//  Created by Victor Gerasimov on 06.02.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var toggleFlash = 1
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    fileprivate func updateUI() {
        view.backgroundColor = toggleFlash == 1 ? .systemGreen : toggleFlash == 2 ? .systemRed : .systemYellow
        guard let device = AVCaptureDevice.default(for: AVMediaType.video) else {
            return
        }
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                device.torchMode = toggleFlash >= 2 ? .on : .off
                device.unlockForConfiguration()
            } catch {}
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        switch toggleFlash {
        case 1: toggleFlash -= 1
        case 2: toggleFlash += 1
        default: toggleFlash = toggleFlash == 0 ? 2 : 1
        }
        updateUI()
    }
}
