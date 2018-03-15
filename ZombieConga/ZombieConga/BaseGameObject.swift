//
//  BaseGameObject.swift
//  ZombieConga
//
//  Created by Mahboob Khizer on 2/15/18.
//  Copyright © 2018 kevin. All rights reserved.
//

import Foundation
import SpriteKit

class GameObject : SKSpriteNode {
    
    var moveSpeed : CGFloat = 10.0
    var moveToTarget = CGPoint(x: 0, y: 0)
    
    init(imageName : String, pos : CGPoint) {
        let texture = SKTexture(imageNamed : imageName)
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        position = pos
        self.SetTarget(newTarget: pos)
    }
    
    func MoveTo(){
        
        var moveToPos = CGPoint(x: position.x - moveToTarget.x, y: position.y - moveToTarget.y)
        let length = sqrt(moveToPos.x * moveToPos.x + moveToPos.y * moveToPos.y)
        moveToPos.x = moveToPos.x / length * moveSpeed
        moveToPos.y = moveToPos.y / length * moveSpeed
        
        if (abs( position.x - moveToTarget.x) > moveSpeed + 1){
            position = CGPoint(x: position.x - moveToPos.x,y: position.y - moveToPos.y)
        }
        
    }
    
    func SetTarget(newTarget : CGPoint){
        moveToTarget = newTarget
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("asdf")
    }
}
