//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Evergreen Prosper on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    //dice image placeholder 1
    @IBOutlet weak var diceImageView1: UIImageView!
    //dice image placeholder 2
    @IBOutlet weak var diceImageView2: UIImageView!
    // array of dice face images
    let imageArray = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shuffleDice()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        shuffleDice()
    }
    
    //to shuffle the dice
    func shuffleDice(){
        // generate random number btwn 0 and 5
        var randImage = Int.random(in: 0...5)
        //set
        diceImageView1.image = imageArray[randImage]
        randImage = Int.random(in: 0...5)
        diceImageView2.image = imageArray[randImage]
    }
}


