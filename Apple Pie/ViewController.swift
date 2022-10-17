//
//  ViewController.swift
//  Apple Pie
//
//  Created by 8h on 10/17/22.
//

import UIKit

class ViewController: UIViewController {

    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
        
    var totalWins = 0
    var totalLosses = 0

    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    var currentGame: Game!

    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining:
        incorrectMovesAllowed)

     }
    
    func updateUI() {
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
    treeImageView.image = UIImage(named: "Tree  \(currentGame.incorrectMovesRemaining)")

    }

    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButton: [UIButton]!
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

