//
//  ViewController.swift
//  APP Swoosh
//
//  Created by AMN on 1/19/22.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStartedAction(_ sender: Any) {
        let storyBoard = storyboard?.instantiateViewController(withIdentifier: "LeagueController") as! LeagueController
        storyBoard.modalTransitionStyle = .flipHorizontal
        self.navigationController?.pushViewController(storyBoard, animated: true)
    }
    
}

