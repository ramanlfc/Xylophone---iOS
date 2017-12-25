//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        let fileName = "note" + String(sender.tag)
        
        let soundUrl = Bundle.main.url(forResource: fileName, withExtension: "wav")
        
        do {
            try player = AVAudioPlayer(contentsOf: soundUrl!)
            player.play()
            
        } catch let err as Error {
            print(err)
        }
        
    }
    
  

}

