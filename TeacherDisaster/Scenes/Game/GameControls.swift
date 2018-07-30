//
//  GameControls.swift
//  Scene-Control
//
//  Created by Fernando Vazquez on 7/4/18.
//  Copyright © 2018 Cartwheel Galaxy. All rights reserved.
//

import SpriteKit

struct GameControls {
	
    /// Menu Background
    let background: SKSpriteNode
    
	/// Exit Button and Label
	let buttonSprite:SKSpriteNode
	let buttonLabel: SKLabelNode
    
    /// Teacher's Body
    let teacher: SKSpriteNode
    let teacherArm: SKSpriteNode
    
    /// Screen Limits
    let borderBody: SKPhysicsBody
	
	init(inThisScene: GameScene) {
        
        /// Background Image
        background = SKSpriteNode.init(imageNamed: "BgGame")
        background.name = "background"
        background.zPosition = 1
        background.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height/2))
        
        /// Teacher's Body Image
        teacher = SKSpriteNode.init(imageNamed: "Teacher")
        teacher.name = "teacherBody"
        teacher.zPosition = 2
        teacher.position = CGPoint(x: inThisScene.size.width*2/10, y: (inThisScene.size.height*5/20))
        
        /// Teacher's Arm Image
        teacherArm = SKSpriteNode.init(imageNamed: "Teacher_Arm")
        teacherArm.name = "teacherArm"
        teacherArm.zPosition = 3
        teacherArm.position = CGPoint(x: inThisScene.size.width*7/40, y: (inThisScene.size.height*13/40))
		
		/// Exit  Button
		buttonSprite = SKSpriteNode.init(imageNamed: "Button")
		buttonSprite.name = "buttonSprite-Menu"
		buttonSprite.zPosition = 2
		buttonSprite.position = CGPoint(x: inThisScene.size.width/2, y: (inThisScene.size.height*1/13))
		
		
		/// Button label
		buttonLabel = SKLabelNode.init(text: "Return Menu")
		buttonLabel.name = "buttonLabel-Menu"
		buttonLabel.fontName = "Avenir-Heavy"
		buttonLabel.horizontalAlignmentMode = .center
		buttonLabel.verticalAlignmentMode = .center
		buttonLabel.fontColor = .white
		buttonLabel.fontSize = 24
		buttonLabel.zPosition = 3
		buttonLabel.position = CGPoint(x: 0, y: 0)
        
        /// ScreenLimits
        borderBody = SKPhysicsBody(edgeLoopFrom: inThisScene.frame)
        borderBody.friction = 0
        inThisScene.physicsBody = borderBody
        
        /// Resizing Background
        let resizeFactorBgX:CGFloat = inThisScene.size.width/4063.0
        let resizeFactorBgY:CGFloat = inThisScene.size.height/1600.0
        let backgroundOriginalSize = background.size
        background.size = CGSize(width: backgroundOriginalSize.width*resizeFactorBgX, height: backgroundOriginalSize.height*resizeFactorBgY)
        
        /// Resizing Teacher
        let resizeFactorTeacherX:CGFloat = inThisScene.size.width/222.0
        let resizeFactorTeacherY:CGFloat = inThisScene.size.height/502.0
        let teacherOriginalSize = teacher.size
        teacher.size = CGSize(width: teacherOriginalSize.width*resizeFactorTeacherX/10, height: teacherOriginalSize.height*resizeFactorTeacherY/2.5)
        
        /// Resizing Teacher
        let resizeFactorTeacherArmX:CGFloat = inThisScene.size.width/405.0
        let resizeFactorTeacherArmY:CGFloat = inThisScene.size.height/96.0
        let teacherArmOriginalSize = teacher.size
        teacherArm.size = CGSize(width: teacherArmOriginalSize.width*resizeFactorTeacherArmX/0.8, height: teacherArmOriginalSize.height*resizeFactorTeacherArmY/15)
        
        /// Resizing depending to screen size
        let resizeFactorX:CGFloat = inThisScene.size.width/407.0
        let resizeFactorY:CGFloat = inThisScene.size.height/599.0
        let originalSize = buttonSprite.size
        buttonSprite.size = CGSize(width: originalSize.width*resizeFactorX, height: originalSize.height*resizeFactorY)

		/// Add Label to Scene
		buttonSprite.addChild(buttonLabel)
	}

}
