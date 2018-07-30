//
//  GameControls.swift
//  Scene-Control
//
//  Created by Fernando Vazquez on 7/4/18.
//  Copyright © 2018 Cartwheel Galaxy. All rights reserved.
//

import SpriteKit

struct MenuControls {
    
    /// Menu Background
    let background: SKSpriteNode
	
	/// Instructions Button+
	let buttonInst: SKSpriteNode
    
    /// Game Button
    let buttonGame:SKSpriteNode
	
	init(inThisScene: MenuScene) {
		
        /// Background Image
        background = SKSpriteNode.init(imageNamed: "BgMenu")
        background.name = "background"
        background.zPosition = 1
        background.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        
        /// Play  Button
        buttonGame = SKSpriteNode.init(imageNamed: "ButtonPlay")
        buttonGame.name = "buttonSprite-Game"
        buttonGame.zPosition = 2
        buttonGame.position = CGPoint(x: inThisScene.size.width*10/12, y: (inThisScene.size.height*8/12))
		
		/// Instructions  Button
		buttonInst = SKSpriteNode.init(imageNamed: "ButtonInstructions")
		buttonInst.name = "buttonSprite-Inst"
		buttonInst.zPosition = 2
		buttonInst.position = CGPoint(x: inThisScene.size.width*10/12, y: (inThisScene.size.height*4/12))
		
        
        /// Resizing Background
        let resizeFactorBgX:CGFloat = inThisScene.size.width/959.0
        let resizeFactorBgY:CGFloat = inThisScene.size.height/518.0
        let backgroundOriginalSize = background.size
        background.size = CGSize(width: backgroundOriginalSize.width*resizeFactorBgX, height: backgroundOriginalSize.height*resizeFactorBgY)
        
        /// Resizing buttons
        let resizeFactorX:CGFloat = inThisScene.size.width/917.0
        let resizeFactorY:CGFloat = inThisScene.size.height/271.0
        let originalSize = buttonInst.size
        buttonInst.size = CGSize(width: originalSize.width*resizeFactorX/3, height: originalSize.height*resizeFactorY/5)
        buttonGame.size = CGSize(width: originalSize.width*resizeFactorX/3, height: originalSize.height*resizeFactorY/5)
        
	}

}
