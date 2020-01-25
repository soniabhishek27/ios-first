//
//  ViewController.swift
//  Dicee
//
//  Created by abhishek soni on 23/01/20.
//  Copyright © 2020 abhisheksoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let DiceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDice1 : Int = 0;
    var randomDice2 : Int = 0;
    
	
    

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UpdateDice();
        
    
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        UpdateDice();	
    }
    
    @IBAction func rollButton(_ sender: Any)
    {
        
      
        UpdateDice();
        
        
        
    }
    
    func UpdateDice()
    {
        
        randomDice1 = Int.random(in: 0...5);
        randomDice2 = Int.random(in: 0...5);
        
        print(randomDice1)
        print(randomDice2)
        
        diceImageView1.image=UIImage(named:DiceArray[randomDice1])
        
        
        diceImageView2.image = UIImage(named :
            DiceArray[randomDice2]);
        
    }
    
}

