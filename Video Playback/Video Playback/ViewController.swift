//
//  ViewController.swift
//  Video Playback
//
//  Created by Elle Zadina on 4/1/17.
//  Copyright © 2017 Elle Zadina. All rights reserved.
//

import UIKit

//Added
import AVKit
import AVFoundation
//

class ViewController: UIViewController {

    //Added
    @IBAction func playVideo(_ sender: Any) {
        guard let url = URL(string: "https://devimages.apple.com.edgekey.net/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
            return
        }
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)
        
        //Create an AVPlayer, passing it local URL
        let theURL = Bundle.main.url(forResource:"test", withExtension: "mov");
        let avPlayer = AVPlayer.init(url: theURL!)
        let avPlayerLayer = AVPlayerLayer(player: avPlayer)
        avPlayerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        avPlayer.actionAtItemEnd = AVPlayerActionAtItemEnd.none
        
        avPlayerLayer.frame = view.layer.bounds
        view.backgroundColor = UIColor.clear
        view.layer.insertSublayer(avPlayerLayer, at:0)
        
        
        
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = avPlayer
        
        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

