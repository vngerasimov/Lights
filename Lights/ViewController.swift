//
//  ViewController.swift
//  Lights
//
//  Created by Victor Gerasimov on 06.02.2022.
//

import UIKit

class ViewController: UIViewController {

    var isLigthtOn = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = isLigthtOn ? .white : .black
    }

    @IBAction func buttonPressed() {
        isLigthtOn.toggle()
        updateUI()
    }
}

