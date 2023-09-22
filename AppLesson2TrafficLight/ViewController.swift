//
//  ViewController.swift
//  AppLesson2TrafficLight
//
//  Created by Глеб Зобнин on 21.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var greenSignal: UIView!
    @IBOutlet weak var yellowSignal: UIView!
    @IBOutlet weak var redSignal: UIView!
    
    private var state = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.alpha = 0.3
        greenSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        
        let raduis = view.frame.width / 2
        redSignal.layer.cornerRadius = redSignal.frame.width / 2
        greenSignal.layer.cornerRadius = greenSignal.frame.width / 2
        yellowSignal.layer.cornerRadius = yellowSignal.frame.width / 2
        startButton.layer.cornerRadius = 25
    
    }
    

    @IBAction func startButtonPushed(_ sender: Any) {
        startButton.setTitle("Next", for: .normal)
        changeLight()
        state += 1
        
        if state > 3 {
            state = 0
        }
    }
    
    private func changeLight() {
        switch state {
        case 0:
            redSignal.alpha = 1
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 0.3
        case 1:
            redSignal.alpha = 1
            yellowSignal.alpha = 1
            greenSignal.alpha = 0.3
        case 2:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 0.3
            greenSignal.alpha = 1
        case 3:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
            greenSignal.alpha = 0.3
        default:
            print("Unknown state")
        }
    }
    
}

