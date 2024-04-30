//
//  ViewController.swift
//  Chech Match
//
//  Created by Hiba on 9/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var sliderLabel: UISlider!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    var randomNumber : Int = 0
    var sliderValue : Int = 0
    var difference : Int = 0
    var score: Int = 0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderButton(_ sender: UISlider) {
       
        sliderValue = lroundf(sliderLabel.value)
    
        infoLabel.isHidden = true
    }
    
    
    
    @IBAction func tryButton(_ sender: UIButton) {
        
       randomNumber = Int(arc4random_uniform(100))
        randomNumberLabel.text = "\(randomNumber)"
        
        infoLabel.isHidden = true
    }
    
    

    @IBAction func checkButton(_ sender: UIButton) {
        
    sliderValueLabel.text = "\(sliderValue)"
        
     difference = (randomNumber - sliderValue)
      score = 100 - abs(difference)
        scoreLabel.text = "Score:  \(score)"
    
        infoLabel.isHidden = true
    }
    
    
  
    @IBAction func infoButton(_ sender: UIButton) {
        infoLabel.isHidden = false
            }
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        loadView()
    }
}

