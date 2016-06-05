//
//  HexagonalDirection.swift
//  Hexacon
//
//  Created by Gautier Gdx on 05/03/16.
//  Copyright © 2016 Gautier. All rights reserved.
//

import UIKit

private extension CGFloat {
    static let horizontalPadding: CGFloat = 1.2
    static let verticalPadding: CGFloat = 1
}

enum HexagonalDirection: Int {
    
    case Right
    //case RightUp
    //case LeftUp
    case Up
    case Left
    //case LeftDown
    //case RightDown
    case Down
    
    /**
     increment the enum to the next move, if it reach the end it come back a the beggining
     */
    mutating func move()  {
        if self != .Down {
            self = HexagonalDirection(rawValue: self.rawValue + 1)!
        } else {
            self = .Right
        }
    }
    
    /**
     this this all the direction we can found in an hexagonal layout following the axial coordinate
     it's used to move to the next center on the grid
     
     - returns: a point diving the direction of the new center
     */
    func direction() -> CGPoint {
        switch self {
        case .Right:
            return CGPoint(x: .horizontalPadding,y: 0)
            
            //        case .RightUp:
            //            return CGPoint(x: .horizontalPadding/2,y: -.verticalPadding)
            //
            //        case .LeftUp:
        //            return CGPoint(x: -.horizontalPadding/2,y: -.verticalPadding)
        case .Up:
            return CGPoint(x: 0,y: -.verticalPadding)
            
        case .Left:
            return CGPoint(x: -.horizontalPadding,y: 0)
            
        case .Down:
            return CGPoint(x: 0,y: .verticalPadding)
            
            //        case .LeftDown:
            //            return CGPoint(x: -.horizontalPadding/2,y: .verticalPadding)
            //
            //        case .RightDown:
            //            return CGPoint(x: .horizontalPadding/2,y: .verticalPadding)
            
        }
    }
}