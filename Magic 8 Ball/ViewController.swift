//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nsikak Thompson on 9/10/19.
//  Copyright © 2019 Nsikak Thompson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImageView1: UIImageView!
    var randomAnswerIndex: Int = 0
    let answerImage = ["ball1", "ball2", "ball3", "ball4", "ball5" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askQuestion(_ sender: UIButton) {
      showRandomAnswer()
    }
    
    
    func showRandomAnswer(){
        randomAnswerIndex = Int.random(in: 0 ... 4)
        print(randomAnswerIndex)
        answerImageView1.image = UIImage(named: answerImage[randomAnswerIndex])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        showRandomAnswer()
    }
    
}

