//
//  Duck.swift
//  QuackNBOOM
//
//  Created by Ngo Tuyetnhi N. and Benoit Neriah R. on 3/4/18.
//  Copyright © 2018 Neriah and Neenee. All rights reserved.
//
// Duck inherits from GameObject with added functionality specific to the falling duck.

import Foundation
import SpriteKit

class Duck: GameObject {
    // Sets the sprite's image
    required init(imagePath: String){
        super.init(imagePath: imagePath)
        zPos = 1.0
        // Proper scale for the ducks
        scale = CGSize(width: 0.75, height: 0.75)
    }
    
    // Update is called every frame and holds the main functionality of the duck
    override func update(_deltaTime: TimeInterval) {
        super.update(_deltaTime: _deltaTime)
    }
}
