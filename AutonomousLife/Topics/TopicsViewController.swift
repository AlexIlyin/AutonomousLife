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
    let colorFinanaceBack = UIColor(red: 237/255, green: 192/255, blue: 186/255, alpha: 0.20)

    let colorHome1 = UIColor(red: 242/255, green: 192/255, blue: 196/255, alpha: 0.45)
    let colorHome2 = UIColor(red: 242/255, green: 192/255, blue: 196/255, alpha: 1)
    let colorHomeBack = UIColor(red: 242/255, green: 192/255, blue: 196/255, alpha: 0.20)

    let colorEdu1 = UIColor(red: 201/255, green: 223/255, blue: 216/255, alpha: 0.45)
    let colorEdu2 = UIColor(red: 201/255, green: 223/255, blue: 216/255, alpha: 1)
    let colorEduBack = UIColor(red: 201/255, green: 223/255, blue: 216/255, alpha: 0.20)

    let colorCooking1 = UIColor(red: 204/255, green: 228/255, blue: 231/255, alpha: 0.45)
    let colorCooking2 = UIColor(red: 204/255, green: 228/255, blue: 231/255, alpha: 1)
    let colorCookingBack = UIColor(red: 204/255, green: 228/255, blue: 231/255, alpha: 0.20)

    let colorCare1 = UIColor(red: 237/255, green: 226/255, blue: 208/255, alpha: 0.45)
    let colorCare2 = UIColor(red: 237/255, green: 226/255, blue: 208/255, alpha: 1)
    let colorCareBack = UIColor(red: 237/255, green: 226/255, blue: 208/255, alpha: 0.20)

    let colorJob1 = UIColor(red: 253/255, green: 220/255, blue: 204/255, alpha: 0.45)
    let colorJob2 = UIColor(red: 253/255, green: 220/255, blue: 204/255, alpha: 1)
    let colorJobBack = UIColor(red: 253/255, green: 220/255, blue: 204/255, alpha: 0.20)

    var color1 = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
    var color2 = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
    var colorBack = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
    
    let test = ["test1","test2","test3","test4"]
    var topic : String = ""
    
    
    //    MARK: LOAD SCREEN
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        initTopic()
        tableView.backgroundColor = colorBack
    
        tableView.rowHeight = 120
        
    }
    
    
    //    MARK: TABLE VIEW
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (test.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        if(indexPath.row % 2 == 0){
            cell.backgroundColor = color1
        }else{
            cell.backgroundColor = color2
        }
        
        cell.myTitle.text = test[indexPath.row]
        cell.myDescription.text = "un testo troppo lungo prova prova aiuto sono un apph ehrerbgh thrb thdgbdfn s ho preso coscienza tb snmfs gb srgm ggrgdrr.gdgb,salvatemi bgb bhdrg"
        
        return (cell)
    }
    
    
//        MARK: INIT
    func initTopic(){

        if(topic == "Finance"){

            color1 = colorFinance1
            color2 = colorFinance2
            colorBack = colorFinanaceBack
            self.navigationItem.title = "Finance"

        }else if(topic == "Home"){
            
            color1 = colorHome1
            color2 = colorHome2
            colorBack = colorHomeBack
            self.navigationItem.title = "Home"
            
        }else if(topic == "Edu"){
            
            color1 = colorEdu1
            color2 = colorEdu2
            colorBack = colorEduBack
            self.navigationItem.title = "Education"
            
        }else if(topic == "Cooking"){
            
            color1 = colorCooking1
            color2 = colorCooking2
            colorBack = colorCookingBack
            self.navigationItem.title = "Cooking"
            
        }else if(topic == "Care"){
            
            color1 = colorCare1
            color2 = colorCare2
            colorBack = colorCareBack
            self.navigationItem.title = "SelfCare"
            
        }else if(topic == "Job"){
            
            color1 = colorJob1
            color2 = colorJob2
            colorBack = colorJobBack
            self.navigationItem.title = "Job"
            
        }

    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
         performSegue(withIdentifier: "Show Story", sender: self)
    }
    
    
//
//    @IBAction func showStory(_ sender: UIButton) {
//        performSegue(withIdentifier: "Show Story", sender: sender)
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show Story" {
            if let storyVC = segue.destination as? StoryViewController {
                storyVC.storyNumber = 0
            }
        }
    }

}
