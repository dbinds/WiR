//
//  ContactsViewController.swift
//  WiR
//
//  Created by Binder, Dawn J. on 8/10/18.
//  Copyright © 2018 Binder, Dawn J. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //Segue Variable
    var selectedCharacter = 0
    
    @IBAction func mic(_ sender: UIButton) {
        //var accessMic: AVAudioSession.microphonePermission
    }
    
    var imageArray = [UIImage(named: "Ral"), UIImage(named: "Van"), UIImage(named: "Fel")]
    //colView.showHorizonalScrollIndicator = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
   
        cell.imgImage.image = imageArray[indexPath.row]
    
        
        //Get character for segue

        
        return cell
    }
    
   
    // Called before the cell is displayed
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        switch cell.imgImage.image{
            case UIImage(named: "Van"):
                selectedCharacter = 2
            case UIImage(named: "Fel"):
                selectedCharacter = 3
            default:
                selectedCharacter = 1
        }
        //print(indexPath.row)
        print(selectedCharacter)
    }
    
    // Called when the cell is displayed
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        //print(indexPath.row)
        
    }
    
    @IBAction func contactsButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "characterCallViewController", sender: self)
    }
    /*
     -------------------
     Prepare and Preform Segue
     -------------------
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "characterCallViewController" {
            let characterHoloCallViewController: CharacterHoloCallViewController = segue.destination as! CharacterHoloCallViewController
        
            characterHoloCallViewController.characterRecived = selectedCharacter
        }
    }
}

