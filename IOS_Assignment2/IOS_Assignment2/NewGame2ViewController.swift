//
//  NewGame2ViewController.swift
//  IOS_Assignment2
//
//  Created by Mark Anthony Natividad on 17/5/20.
//  Copyright © 2020 Mark Anthony Natividad. All rights reserved.
//

import UIKit

class NewGame2ViewController: UIViewController {

    // declaring variables
    var gameTimer: Timer?
    var bubble = Bubble()
    var bubbleArry = [Bubble]()
    var currentScore = 0;
    // Assigning user defaults values to variables
    var gameLength:Int = UserDefaults.standard.integer(forKey: "gameLength")
    var bubbles:Int = UserDefaults.standard.integer(forKey: "bubbles")
    var playerName = UserDefaults.standard.object(forKey: "playerName") as? String
    // variable for combo points
    var lastBubbleValue:Double = 0
    // for high scores
    var rankingDictionary = [String : Double]()
    var previousRankingDictionary: Dictionary? = [String : Double]()
    var sortedHighScoreArray = [(key: String, value: Double)]()
    // for getting screen size
    var screenWidth: UInt32{
        return UInt32(UIScreen.main.bounds.width)
    }
    var screenHeight: UInt32{
        return UInt32(UIScreen.main.bounds.height)
    }
    
    
    
    
    @IBOutlet weak var gameTimeLabel: UILabel!
    
    @IBOutlet weak var currentScoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
