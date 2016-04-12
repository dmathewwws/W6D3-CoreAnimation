//
//  ViewController.swift
//  W6D3 - Core Animation
//
//  Created by Daniel Mathews on 2015-08-05.
//  Copyright © 2015 Daniel Mathews. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let moveAnimation = CABasicAnimation(keyPath: "position.x")
        moveAnimation.fromValue = -view.frame.midX
        moveAnimation.toValue = view.frame.midX
        moveAnimation.duration = 2
        
        
        usernameField.layer.addAnimation(moveAnimation, forKey: "username's moveAnimation")
        
        
        moveAnimation.beginTime = CACurrentMediaTime() + 0.5
        moveAnimation.fillMode = kCAFillModeBoth
        
        passwordField.layer.addAnimation(moveAnimation, forKey: "password's moveAnimtion")
        
        
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        
        print("loginButtonPressed")
        
        
        let shakey = CAKeyframeAnimation(keyPath: "position.x")
        shakey.duration = 0.5
        shakey.keyTimes = [0, 0.25, 0.5, 0.75, 1]
        shakey.values = [0, 10, 10, 10, 10]
        shakey.additive = true
        
        
        passwordField.layer.addAnimation(shakey, forKey: "shakey")
        
        
        
    }
    
    override func animationDidStart(anim: CAAnimation) {
        
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        
        print("animationDidStop w/ anim", anim)
        
//        let passwordTest = anim.valueForKey("passwordText") as! String
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

