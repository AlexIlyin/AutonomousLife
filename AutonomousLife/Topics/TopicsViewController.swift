//
//  TopicsViewController.swift
//  AutonomousLife
//
//  Created by Alex Ilyin on 15/10/2018.
//  Copyright © 2018 Alex Ilyin. All rights reserved.
//

import UIKit

class TopicsViewController: UIViewController, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showStory(_ sender: UIButton) {
        performSegue(withIdentifier: "Show Story", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show Story" {
            if let storyVC = segue.destination as? StoryViewController {
                storyVC.storyNumber = 0
            }
        }
    }

}
