//
//  ViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 02.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction private func loginButtonTapped() {
        
    }
    
    @IBAction private func forgotUsernameButtonTapped() {
        showAlert(with: "Valid username", andMessage: "qwerty")
    }
    
    @IBAction private func forgotPasswordButtonTapped() {
        showAlert(with: "Valid password", andMessage: "123456")
    }
    
    private func showAlert(with title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? WelcomeScreenViewController else { return }
        
        destination.greeting = usernameTF.text!
    }
    
}

