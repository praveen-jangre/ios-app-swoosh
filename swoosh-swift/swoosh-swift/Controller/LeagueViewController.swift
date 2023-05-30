//
//  LeagueViewController.swift
//  swoosh-swift
//
//  Created by Praveen Jangre on 26/05/2023.
//

import UIKit

class LeagueViewController: UIViewController {
    
    var player: Player!

    @IBOutlet weak var mensBtn: PJBorderButton!
    
    @IBOutlet weak var womensBtn: PJBorderButton!
    
    @IBOutlet weak var coedBtn: PJBorderButton!
    
    @IBOutlet weak var nextBtn: PJBorderButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVC", sender: self)
        
    }
    
    
    @IBAction func mensBtnTapped(_ sender: Any) {
        selectLeague(desiredLeague: "Mens")
        
    }
    
    
    @IBAction func womensBtnTapped(_ sender: Any) {
        selectLeague(desiredLeague: "Womens")
        
    }
    
    
    @IBAction func coedBtnTapped(_ sender: Any) {
        selectLeague(desiredLeague: "Co-ed")
        
    }
    
    func selectLeague(desiredLeague: String) {
        player.desiredLeague = desiredLeague
        nextBtn.isEnabled = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillViewController {
            skillVC.player = player
            
        }
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
