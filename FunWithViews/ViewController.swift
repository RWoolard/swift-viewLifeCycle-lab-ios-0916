//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstBox: UIView!
    @IBOutlet weak var secondBox: UIView!
    @IBOutlet weak var thirdBox: UIView!
    @IBOutlet weak var fourthBox: UIView!
    @IBOutlet weak var fifthBox: UIView!
    @IBOutlet weak var sixthBox: UIView!
    @IBOutlet weak var seventhBox: UIView!
    @IBOutlet weak var firstRoll: UILabel!
    @IBOutlet weak var secondRoll: UILabel!
    @IBOutlet weak var thirdRoll: UILabel!
    @IBOutlet weak var fourthRoll: UILabel!
    @IBOutlet weak var fifthRoll: UILabel!
    @IBOutlet weak var sixthRoll: UILabel!

    
    @IBAction func rollDice(sender: AnyObject) {
       
        let number = randomDiceRoll()
        hideAll()
        showBox(number)
        showRollBox("  \(number)")
        print(number)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstBox.hidden = true
        secondBox.hidden = true
        thirdBox.hidden = true
        fourthBox.hidden = true
        fifthBox.hidden = true
        sixthBox.hidden = true
        seventhBox.hidden = true
        firstRoll.hidden = true
        secondRoll.hidden = true
        thirdRoll.hidden = true
        fourthRoll.hidden = true
        fifthRoll.hidden = true
        sixthRoll.hidden = true
    }
    
  
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideAll(){
        firstBox.hidden = true
        secondBox.hidden = true
        thirdBox.hidden = true
        fourthBox.hidden = true
        fifthBox.hidden = true
        sixthBox.hidden = true
        seventhBox.hidden = true
        
        
        
    }
    func showRollBox(rollBox: String) {
        
        switch ""{
        case firstRoll.text!:
            firstRoll.hidden = false
            firstRoll.text = rollBox
        case secondRoll.text!:
            secondRoll.hidden = false
            secondRoll.text = rollBox
        case thirdRoll.text!:
            thirdRoll.hidden = false
            thirdRoll.text = rollBox
        case fourthRoll.text!:
            fourthRoll.hidden = false
            fourthRoll.text = rollBox
        case fifthRoll.text!:
            fifthRoll.hidden = false
            fifthRoll.text = rollBox
        case sixthRoll.text!:
            sixthRoll.hidden = false
            sixthRoll.text = rollBox
        default:
            0
            
        }
        
    }
    
    

    
    func showBox(dieNumber: Int){
        switch dieNumber{
        case 1:
            fourthBox.hidden = false
        case 2:
            sixthBox.hidden = false
            secondBox.hidden = false
        case 3:
            firstBox.hidden = false
            fourthBox.hidden = false
            seventhBox.hidden = false
        case 4:
            firstBox.hidden = false
            secondBox.hidden = false
            sixthBox.hidden = false
            seventhBox.hidden = false
        case 5:
            firstBox.hidden = false
            secondBox.hidden = false
            fourthBox.hidden = false
            sixthBox.hidden = false
            seventhBox.hidden = false
        case 6:
            firstBox.hidden = false
            secondBox.hidden = false
            thirdBox.hidden = false
            fifthBox.hidden = false
            sixthBox.hidden = false
            seventhBox.hidden = false
        default:
            true

            
        }
        
        

        
   
        
 
    }
}
