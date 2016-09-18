//
//  SignInViewController.swift
//  DONDE
//
//  Created by Rahul Shrestha on 9/16/16.
//  Copyright © 2016 SLU. All rights reserved.
//

import UIKit
import DigitsKit
import Crashlytics


class SignInViewController: UIViewController {

    //@IBOutlet weak var lookAroundButton: UIButton!
    @IBOutlet weak var connectWithPhoneButton: UIButton!
    
    @IBAction func onConnectWithPhoneButtonTapped(_ sender: AnyObject) {
        
        // Create a Digits appearance with native colors.
        let configuration = DGTAuthenticationConfiguration(accountFields: .defaultOptionMask)
        
        configuration?.appearance = DGTAppearance()
        configuration?.appearance.backgroundColor = UIColor.dondeWhiteColor()
        configuration?.appearance.accentColor = UIColor.dondeGreenColor()
        
        // Start the Digits authentication flow with the custom appearance.
        Digits.sharedInstance().authenticate(with: nil, configuration:configuration!) { (session, error) in
            if session != nil {
                
                // wtf??
                self.performSegue(withIdentifier: "showTabViewForAuthenticatedUsers", sender: self)

                
                // Tie crashes to a Digits user ID in Crashlytics.
                Crashlytics.sharedInstance().setUserIdentifier(session?.userID)
                
                print(session?.phoneNumber)
                print(session?.userID)
                
            } else {
               
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        decorateButton(connectWithPhoneButton, color: UIColor.dondeGreenColor())

    }
    
    @IBAction func onLookAroundButtonTapped(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "lookUpPageviewSegue", sender: self)
    }
    // MARK: Utilities
    
    fileprivate func decorateButton(_ button: UIButton, color: UIColor) {
        // Draw the border around a button.
        button.layer.masksToBounds = false
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 6
        button.backgroundColor = color
    }

}

