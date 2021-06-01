//
//  LogInScreenViewController.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 4/10/20.
//

import UIKit
import FirebaseAuth

class LogInScreenViewController: UIViewController {

    @IBOutlet weak var FPLogo: UIImageView!
    @IBOutlet weak var FB: UIButton!
    @IBOutlet weak var TWT: UIButton!
    @IBOutlet weak var GGL: UIButton!
    
    @IBOutlet weak var logInText: ATBodyStyle!
    @IBOutlet weak var or: ATBodyStyle!
    
    @IBOutlet weak var emailTextField: ATTextField!
    @IBOutlet weak var passwordTextField: ATTextField!
    
//    https://healthplannerplus87.firebaseapp.com/__/auth/handler

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FB.setBackgroundImage(UIImage(named: "facebook"), for: .normal)
        TWT.setBackgroundImage(UIImage(named: "twitter"), for: .normal)
        GGL.setBackgroundImage(UIImage(named: "google"), for: .normal)
        
        view.backgroundColor    = K.Colour.background2
        FPLogo.image            = UIImage(named: "VC Inv")
        logInText.text          = "Already a member?"
        or.text                 = "Or"
                
    }
    
    
    //MARK: - Login Button
    @IBAction func loginSegue(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.loginPressed, sender: self)
    }
    
    //MARK: - Email Registration
    @IBAction func RegisterPressed(_ sender: ATSelectionButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text { //comma seperated both properties to apply the 'if let' optional chaining to two optionals
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if error != nil {
                    print(error!._code)
                    self.handleError(error!)      // use the handleError method
                    return
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
        //Determine if segue should run or not
        if identifier == K.registerSegue {
            return false
        }
        return true
    }
    
//MARK: - facebook login
    
    @IBAction func FBLogin(_ sender: UIButton) {
        
        
        
    }
    
    
    
}





