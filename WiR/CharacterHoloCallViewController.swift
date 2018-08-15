//
//  CharacterHoloCallViewController.swift
//  WiR
//
//  Created by Anderson, Jordyn on 8/13/18.
//  Copyright © 2018 Binder, Dawn J. All rights reserved.
//

import UIKit
import Speech
import AVFoundation

class CharacterHoloCallViewController: UIViewController, SFSpeechRecognizerDelegate, AVAudioRecorderDelegate{
    
    @IBOutlet var CharacterTESTImageView: UIImageView!
    
    //Segue Variables
    var characterRecived = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Request Audio Recording permission
        AVAudioSession.sharedInstance().requestRecordPermission () {
            [unowned self] allowed in
            if allowed {print("The user allowed microphone permission")}
            else {print("User did not allow mircrophone permission")}
        }
    
        // Do any additional setup after loading the view.
        switch characterRecived {
            case 0:
                CharacterTESTImageView.image = #imageLiteral(resourceName: "Ral")
            case 1:
                CharacterTESTImageView.image = #imageLiteral(resourceName: "Van")
            default:
                CharacterTESTImageView.image = #imageLiteral(resourceName: "Fel")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func endCallButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        print("end pressed")
        self.performSegue(withIdentifier: "unwindToContactsViewController", sender: self)
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
