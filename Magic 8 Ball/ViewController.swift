//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sain-R Edwards Jr. on 10/9/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eightBallImageView: UIImageView!
    
    var eightBallQuestionIndex: Int = 0
    
    var ballNames: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        updateEightBallAnswer()
    }

    @IBAction func askButtonTapped(_ sender: UIButton) {
        updateEightBallAnswer()
    }
    
    func updateEightBallAnswer() {
        eightBallQuestionIndex = Int(arc4random_uniform(5))
        eightBallImageView.image = UIImage(named: ballNames[eightBallQuestionIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateEightBallAnswer()
    }
}

