//
//  LoginViewController.swift
//  Login App
//
//  Created by Gleb Belanov on 31.01.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if loginTextField.text == "Admin" && passwordTextField.text == "1234" {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.welcome = loginTextField.text
        } else {
            let warningAlert = UIAlertController(title: "Oops!", message: "Name or password is incorrect", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel)
            
            warningAlert.addAction(okButton)
            present(warningAlert, animated: true)
            
            passwordTextField.text = ""
            
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }

    @IBAction func showLoginAlert(_ sender: UIButton) {
        let loginAlert = UIAlertController(title: "Ooops!", message: "Your name is Admin", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        loginAlert.addAction(okButton)
        present(loginAlert, animated: true)
    }
    
    @IBAction func showPasswordAlert(_ sender: UIButton) {
        let passwordAlert  = UIAlertController(title: "Ooops!", message: "Your password is 1234", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default)
        passwordAlert.addAction(okButton)
        present(passwordAlert, animated: true)
        
    }
    
}
