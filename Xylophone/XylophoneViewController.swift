//
//  XylophoneViewController.swift
//  Xylophone
//
//  Created by Келлер Дмитрий on 10.04.2023.
//

import UIKit
import AVFoundation

final class XylophoneViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    @IBAction func keyPressed(_ sender: UIButton) {
     
        playSound(soundName: sender.currentTitle ?? "sender error")
     
    }
    
    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension:"wav") else {
            return print("url error")
        }
        player = try! AVAudioPlayer(contentsOf: url)
        player?.play()
        
    }
}



