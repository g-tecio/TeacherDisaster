//
//  GameScene.swift
//  TeacherDisaster
//
//  Created by María del Pilar López Pacheco on 7/30/18.
//  Copyright © 2018 María del Pilar López Pacheco. All rights reserved.
//

class GameData {
    
    static let shared = GameData()
    
    private init() {
        
        // TODO: Restore from file, if does't exist create it with standard values
        
    }
    
    /// Configuration values
    var savedValue: Int = 5
    
}
