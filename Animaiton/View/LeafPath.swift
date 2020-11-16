//
//  Leaf.swift
//  Animaiton
//
//  Created by Maxim Macari on 16/11/20.
//

import SwiftUI

struct LeafPath: Shape {
    
                                    /*
                                     . (midX, minY)
                                    . .
                                   .   .
        (rect.midX, y: rect.minY) .     .(rect.midX, y: rect.maxY)
                                   .   .
                                    . .
                                     .
                                     . (miX, maxY)
                                     */
    
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY),
                          control: CGPoint(x: rect.minX, y: rect.midY))
        
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.maxY),
                          control: CGPoint(x: rect.maxX, y: rect.midY))
        
        path.closeSubpath()
        
        return path
    }
}


