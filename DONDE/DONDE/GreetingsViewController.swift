//
//  GreetingsViewController.swift
//  DONDE
//
//  Created by Rahul Shrestha on 9/16/16.
//  Copyright © 2016 SLU. All rights reserved.
//

import UIKit
import UITextField_Shake

class GreetingsViewController: UIViewController {
    
    @IBOutlet weak var greetingsTextView: UILabel!
    
    @IBOutlet weak var fullNameLabel: UITextField!

    @IBOutlet weak var userNameLabel: UITextField!
    
    @IBOutlet weak var trackLabel: UILabel!
    
    @IBOutlet weak var snapLabel: UILabel!
    
    @IBOutlet weak var shareLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.5, delay: 3.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.greetingsTextView.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.greetingsTextView.text = "Let's get Started!"
                
                // Fade in
                UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                    self.greetingsTextView.alpha = 1.0
                    }, completion: nil)
        })
        
        UIView.animate(withDuration: 1.5, delay: 4.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.trackLabel.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.trackLabel.text = "Track"
                
                // Fade in
                UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                    self.trackLabel.alpha = 1.0
                    }, completion: nil)
        })
        
        UIView.animate(withDuration: 1.5, delay: 5.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.snapLabel.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.snapLabel.text = ", Snap"
                
                // Fade in
                UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                    self.snapLabel.alpha = 1.0
                    }, completion: nil)
        })
        
        UIView.animate(withDuration: 1.5, delay: 6.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.shareLabel.alpha = 0.0
            }, completion: {
                (finished: Bool) -> Void in
                
                //Once the label is completely invisible, set the text and fade it back in
                self.shareLabel.text = ", Share!"
                
                // Fade in
                UIView.animate(withDuration: 1.0, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                    self.shareLabel.alpha = 1.0
                    }, completion: nil)
        })
    }
    
    @IBAction func nextButtonPressed(_ sender: AnyObject) {
        if(fullNameLabel.text=="")
        {
            self.fullNameLabel.shake(20,                              withDelta: 5.0,
                speed: 0.03
            )
        }
        
        if(userNameLabel.text=="")
        {
            self.userNameLabel.shake(20,                              withDelta: 5.0, speed: 0.03
            )
        }
        else
        {
            print("works!")
        }
    }

    
}
