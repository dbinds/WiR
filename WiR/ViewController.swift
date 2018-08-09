//
//  ViewController.swift
//  WiR
//
//  Created by Binder, Dawn J. on 8/8/18.
//  Copyright © 2018 Binder, Dawn J. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBAction func mic(_ sender: UIButton) {
        //var accessMic: AVAudioSession.microphonePermission
    }
    
    var imageArray = [UIImage(named: "Ralph"), UIImage(named: "Vanellope"), UIImage(named: "Felixjr")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

