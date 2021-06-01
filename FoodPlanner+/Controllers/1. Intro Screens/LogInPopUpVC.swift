//
//  LogInPopUpVC.swift
//  FoodPlanner+
//
//  Created by Alastair Tooth on 6/10/20.
//

import UIKit
import FirebaseAuth

class LogInPopUpVC: UIViewController {

    @IBOutlet weak var userName: ATTextField!
    @IBOutlet weak var password: ATTextField!
    @IBOutlet weak var loginText: ATHeaderStyle!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor    = K.Colour.fontDarkBack
        loginText.textColor     = K.Colour.buttonBackBlack

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Email login Process
    @IBAction func loginButtonPressed(_ sender: ATSelectionButton) {
        
        if let email = userName.text, let password = password.text {
            Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                if error != nil {
                    print(error!._code)
                    self.handleError(error!)      // use the handleError method
                    return
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
        if identifier == K.loginSegue {
            return false
        }
        return true
    }
}
