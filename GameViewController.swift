//
//  GameViewController.swift
//  3D Rockets
//
//  Created by Fake Name on 12/7/18.
//  Copyright © 2018 Fake Name. All rights reserved.
//
import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var sceneView:SCNView!
    var scene:SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView = self.view as! SCNView
        sceneView.allowsCameraControl = true
        scene = SCNScene(named: "art.scnassets/MainScene.scn")
        sceneView.scene = scene
        
    }
    
    func handleTap(_ gestureRecognize: UIGestureRecognizer) {}
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
}
