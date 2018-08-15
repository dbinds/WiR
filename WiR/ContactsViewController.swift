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
    
    @IBOutlet var collectionViewer: UICollectionView!
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
        cell.imgImage.tag = indexPath.row
        
        return cell
    }
    
    /* Start Call button tapped func */
    
    @IBAction func contactsButtonTapped(_ sender: UIButton) {
        //let index = collectionView.contentOffset.x / collectionView.bounds.size.width
        selectedCharacter = Int(collectionViewer.contentOffset.x/collectionViewer.bounds.size.width)
        print(selectedCharacter)
        performSegue(withIdentifier: "characterCallViewController", sender: self)
    }
    
    /*
     ----------------------------------------------
     Prepare and Preform Unwind Segue and Segue
     ----------------------------------------------
    */
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        //Leave empty
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "characterCallViewController" {
            let characterHoloCallViewController: CharacterHoloCallViewController = segue.destination as! CharacterHoloCallViewController
            //let currIndexPath = collectionViewer.indexPathsForSelectedItems
            characterHoloCallViewController.characterRecived = selectedCharacter
        }
    }
}

