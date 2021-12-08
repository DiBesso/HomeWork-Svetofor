//
//  ViewController.swift
//  HomeWork Svetofor
//
//  Created by Дмитрий Бессонов on 09.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSignal: UIView!
    @IBOutlet weak var yellowSignal: UIView!
    @IBOutlet weak var greenSignal: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignal.alpha = 0.3
        
    }

    @IBAction func startPressed(_ sender: Any) {
    }
    
}

