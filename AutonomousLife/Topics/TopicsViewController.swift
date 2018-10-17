//
//  TopicsViewController.swift
//  AutonomousLife
//
//  Created by Alex Ilyin on 15/10/2018.
//  Copyright © 2018 Alex Ilyin. All rights reserved.
//

import UIKit

class TopicsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    //    MARK: DECLARIATION
    @IBOutlet weak var tableView: UITableView!
    let colorFinance1 = UIColor(red: 237/255, green: 192/255, blue: 186/255, alpha: 0.45)
    let colorFinance2 = UIColor(red: 237/255, green: 192/255, blue: 186/255, alpha: 1)
    let colorHome1 = UIColor(red: 200/255, green: 100/255, blue: 186/255, alpha: 0.45)
    let colorHome2 = UIColor(red: 200/255, green: 100/255, blue: 186/255, alpha: 1)
    let test = ["test1","test2","test3","test4"]
    var topic : String = ""
    
    
    //    MARK: LOAD SCREEN
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if(topic == "Finance"){
            tableView.backgroundColor = UIColor(red: 237/255, green: 192/255, blue: 186/255, alpha: 0.20)
            self.navigationItem.title = "Finance"
        }else if(topic == "Home"){
            tableView.backgroundColor = UIColor(red: 34/255, green: 84/255, blue: 186/255, alpha: 0.20)
            self.navigationItem.title = "Home"
        }
        
        
        tableView.rowHeight = 120
        
//        debugPrint(topic)
    }
    
    
    //    MARK: TABLE VIEW
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (test.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        if(indexPath.row % 2 == 0){
            cell.backgroundColor = colorFinance1
        }else{
            cell.backgroundColor = colorFinance2
        }
        
        
        cell.myTitle.text = test[indexPath.row]
        cell.myDescription.text = "un testo troppo lungo prova prova prova cadad fg rsgerh ehrerbgh thrb thdgbdfn s egbbmnmvmns tb snmfs gb srgm ggrgdrr.gdgb,dbgrb bgb bhdrg"
//        cell.myDescription.numberOfLines  = 2
        
        return (cell)
    }
    
    
    //    MARK: BUTTON
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
