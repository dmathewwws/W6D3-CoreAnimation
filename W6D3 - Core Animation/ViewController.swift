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
        
        
        let moveAnimation = CABasicAnimation()
        moveAnimation.keyPath = "position.x"
        moveAnimation.toValue = view.frame.midX
        moveAnimation.fromValue = -view.frame.midX
        moveAnimation.delegate = self
        
        usernameField.layer.addAnimation(moveAnimation, forKey: "username")
        
        moveAnimation.beginTime = CACurrentMediaTime() + 0.5
        moveAnimation.fillMode = kCAFillModeBoth
        
        passwordField.layer.addAnimation(moveAnimation, forKey: "password")
        
        
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        
        print("loginButtonPressed")
        
        let shake = CAKeyframeAnimation()
        shake.keyPath = "position.x"
        shake.duration = 0.5
        
        shake.keyTimes = [0, 0.25, 0.5, 0.75, 1]
        shake.values = [0, -10, 10, -10, 0]
        shake.additive = true
        shake.repeatCount = 1
        
        passwordField.layer.addAnimation(shake, forKey: "shake")
        
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

