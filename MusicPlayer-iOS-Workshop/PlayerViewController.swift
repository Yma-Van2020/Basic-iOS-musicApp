//
//  ViewController.swift
//  MusicPlayer-iOS-Workshop
//
//  Created by Admin on 2016-09-09.
//  Copyright © 2016 LHL. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, MediaPlayerProtocol {
    
    @IBOutlet var mediaPlayer: MediaPlayer!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!

    @IBOutlet weak var timeRemaininglabel: UILabel!
    @IBOutlet weak var titleDisplay: UITextView!
    @IBOutlet weak var timeElapseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mediaPlayer.setup()
        
    }
    
    func displaySong(_ song: Song) {
        imageView.image = song.image
    }
    
    func displayCompletionPercentage(_ percentComplete: Float) {
        progressView.progress = percentComplete
    }
    func titleDisplay(_ song: Song){
        titleDisplay.text = song.artist
    }
    
}

