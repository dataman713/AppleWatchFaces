//
//  WatchPreviewViewController.swift
//  AppleWatchFaces
//
//  Created by Michael Hill on 10/28/18.
//  Copyright © 2018 Michael Hill. All rights reserved.
//

import Foundation
import SpriteKit

class WatchPreviewViewController: UIViewController {

    @IBOutlet var skView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Load the SKScene
        if let scene = SKWatchScene(fileNamed: "SKWatchScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            skView.presentScene(scene)
        }
        
        skView.ignoresSiblingOrder = true
        
        skView.showsFPS = false
        skView.showsNodeCount = false
        
    }

}