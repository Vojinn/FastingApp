//
//  ViewController.swift
//  FastingApp
//
//  Created by Dusan Vojinovic on 1.3.22..
//

import UIKit
import Firebase

class RegistrationViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerButtonClick(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    print("Desila se neka greska!")
                } else {
                    // Navigate to the FastingAppViewController
                    print("Uspesno!")
                    self.performSegue(withIdentifier: FA.registerSegue, sender: self)
                }
            }
        }
        
    }
    
}

