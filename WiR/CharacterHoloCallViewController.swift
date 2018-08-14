//
//  CharacterHoloCallViewController.swift
//  WiR
//
//  Created by Anderson, Jordyn on 8/13/18.
//  Copyright © 2018 Binder, Dawn J. All rights reserved.
//

import UIKit

class CharacterHoloCallViewController: UIViewController {
    
    @IBOutlet var CharacterTESTImageView: UIImageView!
    
    //Segue Variables
    var characterRecived = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        switch characterRecived {
            case 0:
                CharacterTESTImageView.image = #imageLiteral(resourceName: "Fel")
            case 2:
                CharacterTESTImageView.image = #imageLiteral(resourceName: "Van")
            default:
                CharacterTESTImageView.image = #imageLiteral(resourceName: "Ral")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func endCallButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        print("end pressed")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
