//
//  GameViewController.swift
//  TeacherDisaster
//
//  Created by María del Pilar López Pacheco on 7/30/18.
//  Copyright © 2018 María del Pilar López Pacheco. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

// TODO: Fix this class

class GameViewController: UIViewController {
    
    // MARK: App Properties
    
    /// Scene State Machine
    var sceneStateMachine: GKStateMachine!
    
    /// Scenes
    var gameScene: GameScene!
    var menuScene: MenuScene!
    var instructionsScene: InstructionsScene!
    
    // MARK: Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// MenuScene Setup
        menuScene = MenuScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// InstructionsScene Setup
        instructionsScene = InstructionsScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// GameScene Setup
        gameScene = GameScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// Creates SceneStateMachine and adds states, then enters GameSceneState
        sceneStateMachine = GKStateMachine(states: [    GameSceneState(referenceGVC: self),
                                                        MenuSceneState(referenceGVC: self),
                                                        InstructionsSceneState(referenceGVC: self)
                                                            ] )
        sceneStateMachine.enter(MenuSceneState.self)
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
