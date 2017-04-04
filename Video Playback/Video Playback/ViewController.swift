//
//  ViewController.swift
//  Video Playback
//
//  Created by Elle Zadina on 4/1/17.
//  Copyright © 2017 Elle Zadina. All rights reserved.
//

import UIKit

import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func playVideo(_ sender: Any) {
        let theURL = Bundle.main.url(forResource:"stockvideo", withExtension: "mp4");
        let avPlayer = AVPlayer.init(url: theURL!)
        let avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        avPlayer.actionAtItemEnd = AVPlayerActionAtItemEnd.none
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = avPlayer
        
        present(controller, animated: true) {
            avPlayer.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

