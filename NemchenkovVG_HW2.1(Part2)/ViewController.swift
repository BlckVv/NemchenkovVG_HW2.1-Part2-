//
//  ViewController.swift
//  NemchenkovVG_HW2.1(Part2)
//
//  Created by Владимир Немченков on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        redLightView.clipsToBounds = true
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        yellowLightView.clipsToBounds = true
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
        greenLightView.clipsToBounds = true
}
    
    @IBAction func trafficLightStartButtonPressed() {
            
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            startButton.setTitle("Next", for: .normal)
        }
    }
}
