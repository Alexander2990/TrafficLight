//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр on 28.01.2024.
//

import UIKit

enum SignalColor {
    case red
    case yellow
    case green
}

final class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchLightButton: UIButton!
    
    private var signalColor = SignalColor.red
    
    private let lightOn: CGFloat = 1
    private let lightOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        
        switchLightButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
    }

    @IBAction func changeTrafficLight() {
        
        switchLightButton.setTitle("NEXT", for: .normal)
        
        switch signalColor {
        case .red:
            redLightView.alpha = lightOn
            greenLightView.alpha = lightOff
            signalColor = .yellow
        case .yellow:
            yellowLightView.alpha = lightOn
            redLightView.alpha = lightOff
            signalColor = .green
        case .green:
            greenLightView.alpha = lightOn
            yellowLightView.alpha = lightOff
            signalColor = .red
        }
    }
    
}

