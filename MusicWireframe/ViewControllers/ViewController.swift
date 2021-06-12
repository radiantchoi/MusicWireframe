//
//  ViewController.swift
//  MusicWireframe
//
//  Created by Gordon Choi on 2021/06/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var reverseBackground: UIView!
    @IBOutlet var playPauseBackground: UIView!
    @IBOutlet var forwardBackground: UIView!
    @IBOutlet var reverseButton: UIButton!
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var forwardButton: UIButton!
    
    var isPlaying: Bool = true {
        didSet {
            if isPlaying {
                playPauseButton.setImage(UIImage(named: "pause"), for: .normal)
            } else {
                playPauseButton.setImage(UIImage(named: "play"), for: .normal)
            }
        }
    }
    
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reverseBackground.layer.cornerRadius = 35.0
        reverseBackground.clipsToBounds = true
        reverseBackground.alpha = 0.0
        
        playPauseBackground.layer.cornerRadius = 35.0
        playPauseBackground.clipsToBounds = true
        playPauseBackground.alpha = 0.0
        
        forwardBackground.layer.cornerRadius = 35.0
        forwardBackground.clipsToBounds = true
        forwardBackground.alpha = 0.0
    }
}

