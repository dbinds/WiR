//
//  ContactsViewController.swift
//  WiR
//
//  Created by Binder, Dawn J. on 8/10/18.
//  Copyright © 2018 Binder, Dawn J. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
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
        return cell
    }
    
}

