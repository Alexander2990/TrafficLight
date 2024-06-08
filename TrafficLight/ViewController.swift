//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр on 07.06.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    enum TrafficLightColor {
        case red
        case yellow
        case green
    }
    
    @IBOutlet private var toggleTrafficLightButton: UIButton!
    
    @IBOutlet private var redTrafficLightView: UIView!
    @IBOutlet private var yellowTrafficLightView: UIView!
    @IBOutlet private var greenTrafficLightView: UIView!
    
    private var currentLight: TrafficLightColor = .green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLightView.layer.cornerRadius = redTrafficLightView.frame.width / 2
        yellowTrafficLightView.layer.cornerRadius = yellowTrafficLightView.frame.width / 2
        greenTrafficLightView.layer.cornerRadius = greenTrafficLightView.frame.width / 2
        
        redTrafficLightView.alpha = 0.3
        yellowTrafficLightView.alpha = 0.3
        greenTrafficLightView.alpha = 0.3
        
        toggleTrafficLightButton.layer.cornerRadius = 15
    }
    
    @IBAction private func switchTrafiicLightButton() {
        switch currentLight {
        case .red:
            yellowTrafficLightView.alpha = 1
            redTrafficLightView.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            greenTrafficLightView.alpha = 1
            yellowTrafficLightView.alpha = 0.3
            currentLight = .green
        case .green:
            redTrafficLightView.alpha = 1
            greenTrafficLightView.alpha = 0.3
            currentLight = .red
            toggleTrafficLightButton.setTitle("NEXT", for: .normal)
        }
    }
}

