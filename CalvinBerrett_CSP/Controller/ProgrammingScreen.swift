//
//  ProgrammingScreen.swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 10/26/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingScreen: UIViewController
{

    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
        // Do any additional setup after loading the view.
    }

}
