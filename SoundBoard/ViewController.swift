//
//  ViewController.swift
//  SoundBoard
//
//  Created by Vannia Alfaro alfaro on 31/03/2019.
//  Copyright © 2019 Vannia Alfaro alfaro. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer?
    let sound = ["01_Rock The Popular","02_Track 5, Delayed","03_Jazzistical Measures",
                 "04_Blus Fire, The Audio"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func buttonsTapped(_ sender: UIButton) {
        let tag = sender.tag
        
        playSound(fileName: sound[tag])
    }
    
    func playSound(fileName: String){
        let url = Bundle.main.url(forResource: fileName, withExtension: "mp3")
        
        guard url != nil else{
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch {
            print("error \(fileName)")
        }
    }
    
}

