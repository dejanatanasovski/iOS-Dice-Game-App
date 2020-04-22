//
//  ViewController.swift
//  Dice-Game-App
//
//  Created by Code Nation on 22/04/2020.
//  Copyright © 2020 Dejan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let array = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomNumber = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var diceImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ButtonPressed(_ sender: Any) {
        randomNumber = Int(arc4random_uniform(6))
        diceImg.image = UIImage(named: array[randomNumber])
        label.text = "Your number is \(randomNumber + 1)"
    }
}

