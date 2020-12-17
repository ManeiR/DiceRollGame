//
//  HomeViewController.swift
//  DiceRollGame
//
//  Created by manei on 17/12/20.
//  Copyright © 2020 manei. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Deal & Roll"
    }
    
    @IBAction func dealButtonTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Manei", bundle: Bundle.main)
        let cardController = storyboard.instantiateViewController(withIdentifier: "CardsViewController")
        navigationController?.pushViewController(cardController, animated: true)
    }
    
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Manei", bundle: Bundle.main)
        let diceController = storyboard.instantiateViewController(withIdentifier: "DiceViewController")
        navigationController?.pushViewController(diceController, animated: true)
    }
    
}
