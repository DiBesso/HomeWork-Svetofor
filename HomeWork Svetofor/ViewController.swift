//
//  ViewController.swift
//  HomeWork Svetofor
//
//  Created by Дмитрий Бессонов on 09.12.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redSignal: UIView!
    @IBOutlet weak var yellowSignal: UIView!
    @IBOutlet weak var greenSignal: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redSignal.alpha = lightIsOff
        yellowSignal.alpha = lightIsOff
        greenSignal.alpha = lightIsOff
        
    }

    @IBAction func startPressed() {
        
        switch currentLight {
        case .red:
            greenSignal.alpha = lightIsOff
            redSignal.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redSignal.alpha = lightIsOff
            yellowSignal.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenSignal.alpha = lightIsOn
            yellowSignal.alpha = lightIsOff
            currentLight = .red
        }
    }
    
}

