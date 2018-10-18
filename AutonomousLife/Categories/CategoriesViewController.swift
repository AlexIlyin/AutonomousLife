//
//  CategoriesViewController.swift
//  AutonomousLife
//
//  Created by Alex Ilyin on 15/10/2018.
//  Copyright © 2018 Alex Ilyin. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    var arg = String()
    @IBOutlet weak var Finance: UIButton!
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var Edu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Finance.setTitle("Finance", for: .normal)
        Home.setTitle("Home", for: .normal)
        Edu.setTitle("Edu", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showTopics(_ sender: UIButton) {
        arg = sender.title(for: .normal) ?? "buttom"
        performSegue(withIdentifier: "Show Topics", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondController = segue.destination as! TopicsViewController
        secondController.topic = arg
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
