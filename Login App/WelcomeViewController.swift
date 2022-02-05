//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Александр Муратов on 01.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    var user: User!
    
    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var paragraphLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        
        switch hour {
        case 0...5:
            emojiLabel.text = "🌃"
            welcomeLabel.text = "Good night, \(user.name)!"
            paragraphLabel.text = """
                The moon is shining bright,
                The sun is now nowhere in sight.
                The stars are twinkling with all their might,
                While there's darkness outside, left & right.
                So let us now turn off the light,
                and wish each other a very good night.
                """
        case 6...11:
            emojiLabel.text = "🌅"
            welcomeLabel.text = "Good morning, \(user.name)!"
            paragraphLabel.text = """
                Awake! 'Tis time for you to rise!
                Awake! And open both your eyes!
                The day is here, the sky is blue,
                And all the World is calling you!
                """
        case 12...17:
            emojiLabel.text = "🏙️"
            welcomeLabel.text = "Have a good day, \(user.name)!"
            paragraphLabel.text = """
                A new day always starts on a good thought,
                There are so many lessons to be taught,
                A new day signals new life,
                When you have to strive for the day,
                As you begin this precious day,
                I just want to wish,
                Have a lovely day!
                """
        case 18...23:
            emojiLabel.text = "🌇"
            welcomeLabel.text = "Have a good evening, \(user.name)!"
            paragraphLabel.text = """
                Such a beautiful evening it is,
                The air so fresh and breezy,
                Such a beautiful evening it is,
                The air is such wheezy,
                Evenings are really a fun time,
                Like the sweet bells of the chime,
                Good evening!
                """
        default: break
        }
    }
}
