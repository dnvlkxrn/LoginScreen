//
//  WelcomeScreenViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 02.04.2023.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let greeting = self.greeting else { return }
        greetingLabel.text = "Welcome, \(greeting)!"

    }
    

    @IBAction func logOutTapped() {
        dismiss(animated: true)
    }
        
}
