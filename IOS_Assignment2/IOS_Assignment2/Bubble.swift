//
//  Bubble.swift
//  IOS_Assignment2
//
//  Created by Mark Anthony Natividad on 16/5/20.
//  Copyright © 2020 Mark Anthony Natividad. All rights reserved.
//

import UIKit

class Bubble: UIButton{
    
    var value:Double = 0;
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect){
        super.init(frame:frame)
        
        let possibility = Int.random(in: 0...100)
        switch possibility{
        case 0...5:
            self.backgroundColor = UIColor.black
            self.value = 10
        case 6...15:
            self.backgroundColor = UIColor.blue
            self.value = 8
        case 16...30:
            self.backgroundColor = UIColor.green
            self.value = 5
        case 31...60:
            self.backgroundColor = UIColor.systemPink
            self.value = 2
        case 61...100:
            self.backgroundColor = UIColor.red
            self.value = 1
        default: print("error")
            
            
        }
    }
    
    func pulsate(){
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.2
        pulse.fromValue = 0.8
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 3
        pulse.initialVelocity = 1
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: "pulse")
        
        
    }
    
}
