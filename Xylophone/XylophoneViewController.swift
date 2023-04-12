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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension:"wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
        
    }
}


