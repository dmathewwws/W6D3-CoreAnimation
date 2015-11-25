//
//  AutoLayoutViewController.swift
//  W6D3 - Core Animation
//
//  Created by Daniel Mathews on 2015-09-30.
//  Copyright © 2015 Daniel Mathews. All rights reserved.
//

import UIKit

class AutoLayoutViewController: UIViewController {

    @IBOutlet weak var greyViewHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func plusButtonPressed(sender: UIButton) {
        
        greyViewHeightConstraint.constant = 60
        

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
