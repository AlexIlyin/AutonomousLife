//
//  TopicsViewController.swift
//  AutonomousLife
//
//  Created by Alex Ilyin on 15/10/2018.
//  Copyright © 2018 Alex Ilyin. All rights reserved.
//

import UIKit

struct DataCell{
    
    let image : UIImage?
    let text : String?
    
}

class TopicsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var data = [DataCell]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //init array
        data = [DataCell.init(image: <#T##UIImage?#>, text: <#T##String?#>)]
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
//    -----------------------------------------------------------------------------------------------
    
    
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
