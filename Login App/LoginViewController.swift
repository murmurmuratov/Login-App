//
//  LoginViewController.swift
//  Login App
//
//  Created by Александр Муратов on 01.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func logInButtonAction(_ sender: Any) {
        if usernameTextField.text == user.login, passwordTextField.text == user.password {
            performSegue(withIdentifier: "showWelcome", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password.")
        }
    }
    
    @IBAction func forgotUsernameButtonAction(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your username is \(user.login)")
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your password is \(user.password)")
    }
    
    @IBAction func unwindToLogin(_ unwindSegue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let action = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        action.addAction(okAction)
        present(action, animated: true, completion: nil)
    }
}
