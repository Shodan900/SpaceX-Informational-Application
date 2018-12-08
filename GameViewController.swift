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
    
    var gameView:SCNView!
    var gameScene:SCNScene!
    var cameraNode:SCNNode!
    
    let rockets = [SCNGeometry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = SCNScene(named: "arts.scnassets/untitled.scn")
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene?.rootNode.addChildNode(cameraNode)
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .spot
        lightNode.position = SCNVector3(x: 0, y: 5, z: 6)
        scene?.rootNode.addChildNode(lightNode)
        
        let scnView = self.view as! SCNView
        scnView.scene = scene
        
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
