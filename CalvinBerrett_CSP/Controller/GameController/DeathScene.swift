//
//  DeathScene.swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 12/19/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import UIKit
import SpriteKit

public class DeathScene: SKScene
{
    override public func didMove (to view: SKView) -> Void
    {
        self.backgroundColor = SKColor.green
        
        let gameOver = SKLabelNode(text: "You have died!")
        gameOver.name = "Game Over"
        gameOver.fontSize = 65
        gameOver.fontColor = SKColor.red
        gameOver.position = CGPoint(x: frame.midX, y: frame.midY)
        
        addChild(gameOver)
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) -> Void
    {
    
        let touch = touches.first
        let touchLocation = touch?.location(in: self)
        let touchedNode = self.atPoint(touchLocation!)
        if(touchedNode.name == "game over")
        {
            let newGameScene = GameScene(size: size)
            newGameScene.scaleMode = scaleMode
            let transitionType = SKTransition.flipHorizontal(withDuration: 0.5)
            view?.presentScene(newGameScene,transition: transitionType)
    
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
