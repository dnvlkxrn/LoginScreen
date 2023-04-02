//
//  WelcomeScreenViewController.swift
//  LoginScreen
//
//  Created by Danila Kornev on 02.04.2023.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = greeting

       
    }
    

    @IBAction func logOutTapped() {
        dismiss(animated: true)
    }
        
}
