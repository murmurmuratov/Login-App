//
//  AboutMeViewController.swift
//  Login App
//
//  Created by Александр Муратов on 03.02.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var navControllerLabel: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navControllerLabel.title = user.name
    }

}
