//
//  cardSelectionVC.swift
//  cardWorkoutApp
//
//  Created by Aviral Singh Halsi on 25/01/24.
//

import UIKit

class cardSelectionVC: UIViewController {

    
    @IBOutlet var cardselectionVC: UIImageView!
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons{
            button.layer.cornerRadius=8
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
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
