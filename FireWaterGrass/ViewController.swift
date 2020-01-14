//
//  ViewController.swift
//  FireWaterGrass
//
//  Created by Jace Kendrick on 1/11/20.
//  Copyright © 2020 Jace Kendrick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func fire(_ sender: UIButton) {
        let computerChoice = Choice.randomComputerChoice()
        label.text = playGame(you: .fire, computer: computerChoice)
        yourChoiceImageView.image = UIImage(named: Choice.fire.rawValue)
        computerChoiceImageView.image = UIImage(named: computerChoice.rawValue)
    }
    
    @IBAction func water(_ sender: UIButton) {
        let computerChoice = Choice.randomComputerChoice()
        label.text = playGame(you: .water, computer: computerChoice)
        yourChoiceImageView.image = UIImage(named: Choice.water.rawValue)
        computerChoiceImageView.image = UIImage(named: computerChoice.rawValue)
    }
    
    @IBAction func grass(_ sender: UIButton) {
        let computerChoice = Choice.randomComputerChoice()
        label.text = playGame(you: .grass, computer: computerChoice)
        yourChoiceImageView.image = UIImage(named: Choice.grass.rawValue)
        computerChoiceImageView.image = UIImage(named: computerChoice.rawValue)
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var yourChoiceImageView: UIImageView!
    @IBOutlet weak var computerChoiceImageView: UIImageView!
    
    enum Choice: String {
        case fire = "fire"
        case water = "water"
        case grass = "grass"
        
        static func randomComputerChoice() -> Choice {
            let choices: [Choice] = [.fire, .water, .grass]
            let index = Int(arc4random_uniform(UInt32(choices.count)))
            let choice = choices[index]
            return choice
        }
    }
    
    func playGame(you: Choice, computer: Choice) -> String {
        if you == computer { return "Tie!"}
        else if (you == .fire && computer == .grass) {return "You win!"}
        else if (you == .water && computer == .fire) {return "You win!"}
        else if (you == .grass && computer == .water) {return "You win!"}
        else {return "Computer wins!"}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

