//
//  ViewController.swift
//  TrafficLight
//
//  Created by Александр on 28.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
    }


}

