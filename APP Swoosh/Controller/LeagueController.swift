//
//  LeagueController.swift
//  APP Swoosh
//
//  Created by AMN on 1/21/22.
//

import UIKit

class LeagueController: UIViewController {
    private var isChoosen : Bool = false
    var player : Player!
    @IBOutlet weak var nextButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
      setup ()
      player = Player()
        // Do any additional setup after loading the view.
    }
    
    private func setup () {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func mensButton(_ sender: Any) {
        isChoosen = true
        player.desiredLeague = "mens"
    }
    
    @IBAction func womensButton(_ sender: Any) {
        isChoosen = true
        player.desiredLeague = "womens"
    }
    
    @IBAction func coedButton(_ sender: Any) {
        isChoosen = true
        player.desiredLeague = "coed"
    }
    @IBAction func backAction(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if isChoosen == false {
            let alert = UIAlertController(title: "Alert", message: "please choose leage type", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        else   {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LevelController") as! LevelController
            vc.desiredLeague = player.desiredLeague
            print(vc.desiredLeague)
            self.navigationController?.pushViewController(vc, animated: true)}
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
