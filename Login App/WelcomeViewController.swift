//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Gleb Belanov on 31.01.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcome: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = welcome

    }
}
