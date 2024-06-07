//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр on 07.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggleTrafficLightButton: UIButton!
    
    @IBOutlet var redTrafficLightView: UIView!
    @IBOutlet var yellowTrafficLightView: UIView!
    @IBOutlet var greenTrafficLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLightView.layer.cornerRadius = redTrafficLightView.frame.width / 2
        yellowTrafficLightView.layer.cornerRadius = yellowTrafficLightView.frame.width / 2
        greenTrafficLightView.layer.cornerRadius = greenTrafficLightView.frame.width / 2
        
        redTrafficLightView.alpha = 0.3
        yellowTrafficLightView.alpha = 0.3
        greenTrafficLightView.alpha = 0.3
        
        toggleTrafficLightButton.layer.cornerRadius = 20
    }


}

