//
//  LevelController.swift
//  APP Swoosh
//
//  Created by AMN on 1/21/22.
//

import UIKit

class LevelController: UIViewController {
var desiredLeague = ""
    
    @IBOutlet weak var leagueType: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    private func setup(){
        self.navigationController?.navigationBar.isHidden = true
        leagueType.text = ("\(desiredLeague) league")
    }
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
