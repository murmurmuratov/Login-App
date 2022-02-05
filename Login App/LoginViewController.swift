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
    
    private let user = User.getUserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
        let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
        welcomeVC.user = user
        aboutUserVC.user = user
    }
    
    @IBAction func logInButtonAction(_ sender: Any) {
        if usernameTextField.text == user.login, passwordTextField.text == user.password {
            performSegue(withIdentifier: "showWelcome", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password.")
        }
    }
    
    @IBAction func forgotUsernameButtonAction(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your username is \(user.login).")
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your password is \(user.password).")
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

extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    It needs to be redone:
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == usernameTextField {
//            passwordTextField.becomeFirstResponder()
//        } else {
//            logInButtonAction((Any).self)
//        }
//        return true
//    }
    
}
