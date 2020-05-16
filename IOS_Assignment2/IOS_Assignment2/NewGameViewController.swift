//
//  NewGameViewController.swift
//  IOS_Assignment2
//
//  Created by Mark Anthony Natividad on 16/5/20.
//  Copyright © 2020 Mark Anthony Natividad. All rights reserved.
//

import UIKit

class NewGameViewController: UIViewController {
    var countdownSeconds = 4;
    var countDowntimer = Timer();
    
    
    @IBOutlet weak var countDownLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    countDownLabel.text = "READY!";        countDowntimer = Timer.scheduledTimer( timeInterval: 1, target: self, selector: #selector(NewGameViewController.countdown), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    @objc func countdown() {
        countDownLabel.text = "READY!";    countdownSeconds -= 1
        countDownLabel.text = String(countdownSeconds)
        if (countdownSeconds == 0){
            countDowntimer.invalidate()
            countDownLabel.text = "START!"        }
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
