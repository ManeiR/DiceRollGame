//
//  CardsViewController.swift
//  DiceRollGame
//
//  Created by manei on 14/12/20.
//  Copyright © 2020 manei. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    // Outlets
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    // Private members
    private var playerScore = 0
    private var cpuScore = 0
    private var playCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Deal the Cards"
        // Do any additional setup after loading the view.
        dealLoad()
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        playCounter += 1
        if playCounter == 10 {
            dealLoad()
            showResult()
        } else if playCounter > 10 {
            showResult()
        } else {
            dealLoad()
        }
    }
}

private extension CardsViewController {
     func dealLoad() {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        playerScore += leftNumber
        cpuScore += rightNumber
        
        leftScoreLabel.text = "\(playerScore)"
        rightScoreLabel.text = "\(cpuScore)"
    }
    
    func showResult() {
        let message = playerScore >= cpuScore
            ? "Congratulations! you won"
            : "Better luck next time"
        let alert = UIAlertController(title: "Game over", message: message, preferredStyle: .alert)
        let action = UIAlertAction.init(title: "okay", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
