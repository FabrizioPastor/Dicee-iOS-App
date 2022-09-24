//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollButton: UIButton!
    
    @IBOutlet weak var diceeTwo: UIImageView!
    @IBOutlet weak var diceeOne: UIImageView!
    
    let dicees = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rollButton.layer.cornerRadius = 12
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        diceeOne.image = UIImage(named: dicees[getRandomNumberForDice()])
        diceeTwo.image = UIImage(named: dicees[getRandomNumberForDice()])
    }
    
    func getRandomNumberForDice() -> Int {
        return Int.random(in: 0...5)
    }
    
}

