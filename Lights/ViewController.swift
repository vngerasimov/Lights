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

    // MARK: - Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = isLigthtOn ? .white : .black
    }

    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        isLigthtOn.toggle()
        updateUI()
    }
}

