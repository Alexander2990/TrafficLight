//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр on 07.06.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var toggleTrafficLightButton: UIButton!
    
    @IBOutlet private var redTrafficLightView: UIView!
    @IBOutlet private var yellowTrafficLightView: UIView!
    @IBOutlet private var greenTrafficLightView: UIView!
    
    private var currentLight: TrafficLightColor = .red
    private let trafficSignalIsOn: CGFloat = 1
    private let trafficSignalIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLightView.layer.cornerRadius = redTrafficLightView.frame.width / 2
        yellowTrafficLightView.layer.cornerRadius = yellowTrafficLightView.frame.width / 2
        greenTrafficLightView.layer.cornerRadius = greenTrafficLightView.frame.width / 2
        
        redTrafficLightView.alpha = trafficSignalIsOff
        yellowTrafficLightView.alpha = trafficSignalIsOff
        greenTrafficLightView.alpha = trafficSignalIsOff
        
        toggleTrafficLightButton.layer.cornerRadius = 15
    }
    
    @IBAction private func switchTrafiicLightButton() {
        if toggleTrafficLightButton.currentTitle == "START" {
            toggleTrafficLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenTrafficLightView.alpha = trafficSignalIsOff
            redTrafficLightView.alpha = trafficSignalIsOn
            currentLight = .yellow
        case .yellow:
            redTrafficLightView.alpha = trafficSignalIsOff
            yellowTrafficLightView.alpha = trafficSignalIsOn
            currentLight = .green
        case .green:
            yellowTrafficLightView.alpha = trafficSignalIsOff
            greenTrafficLightView.alpha = trafficSignalIsOn
            currentLight = .red
        }
    }
}

// MARK: TrafficLightColor
extension ViewController {
    private enum TrafficLightColor {
        case red
        case yellow
        case green
    }
}
