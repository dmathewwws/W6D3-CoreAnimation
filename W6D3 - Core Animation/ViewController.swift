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
        
        let moveToCenter = CABasicAnimation()
        moveToCenter.keyPath = "position.x"
        moveToCenter.fromValue = -CGRectGetMidX(view.frame)
        moveToCenter.toValue = CGRectGetMidX(view.frame)
        moveToCenter.duration = 1.0
        
        usernameField.layer.addAnimation(moveToCenter, forKey: "moveUsernameFieldToCenter")
        
        moveToCenter.beginTime = CACurrentMediaTime() + 0.5;
        moveToCenter.fillMode = kCAFillModeBoth
        
        passwordField.layer.addAnimation(moveToCenter, forKey: "moveUsernameFieldToCenter")
    
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        
        let shakeyShakey = CAKeyframeAnimation()
        shakeyShakey.keyPath = "position.x"
        shakeyShakey.values = [0, 10, -10, 10, 0]
        shakeyShakey.keyTimes = [NSNumber(float: 0), NSNumber(float: 2/5), NSNumber(float: 3/5), NSNumber(float: 4/5), NSNumber(float: 1)]
        shakeyShakey.duration = 0.5
        shakeyShakey.repeatCount = 1
        shakeyShakey.setValue("shakeyShakey", forKey: "name")
        shakeyShakey.setValue(passwordField.layer, forKey: "layer")
        shakeyShakey.delegate = self
        
        shakeyShakey.additive = true
        
        passwordField.layer.addAnimation(shakeyShakey, forKey: "shakeyShakey")
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

