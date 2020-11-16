//
//  Flower.swift
//  Animaiton
//
//  Created by Maxim Macari on 16/11/20.
//

import SwiftUI

struct Flower: View {
    
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    @State var growMiddle = false
    @State var rotation = false
    
    private var angleRotation = 180 / 7
    
    var animation: Animation
    
    init(animation: Animation) {
        self.animation = animation
    }
    
    var body: some View {
        ZStack{
            Leaf(start: start, end: end)
                .scaleEffect(growMiddle ? 1 : 0.5)
                
            
            //left
            Leaf(start: start, end: end)
                .rotationEffect(.init(degrees: rotation ? Double(angleRotation * -1) : 0 ), anchor: .bottom)
            
            Leaf(start: start, end: end)
                .rotationEffect(.init(degrees: rotation ? Double(angleRotation * -2) : 0 ), anchor: .bottom)
                
            Leaf(start: start, end: end)
                .rotationEffect(.init(degrees: rotation ? Double(angleRotation * -3) : 0 ), anchor: .bottom)
                
            
           //Right
            Leaf(start: start, end: end)
                .rotationEffect(.init(degrees: rotation ? Double(angleRotation * 1) : 0 ), anchor: .bottom)
            
            Leaf(start: start, end: end)
                .rotationEffect(.init(degrees: rotation ? Double(angleRotation * 2) : 0 )
                                , anchor: .bottom)
            
            Leaf(start: start, end: end)
                .rotationEffect(.init(degrees: rotation ? Double(angleRotation * 3) : 0 )
                                , anchor: .bottom)
                
            
        }
        .onAppear{
            withAnimation(
                Animation.spring(response: 2, dampingFraction: 2, blendDuration: 10)
            ){
                //middle
                self.growMiddle.toggle()
                
                //rotation
                self.rotation.toggle()
            }
            withAnimation(
                self.animation
            ){
                self.start = UnitPoint(x: randomCGFloat(), y: randomCGFloat())
                self.end = UnitPoint(x: randomCGFloat(), y: randomCGFloat())
            }
        }
        
        .contrast(1)
        .shadow(radius: rotation ? CGFloat(angleRotation)/2 : 8)
        
        
        
    }
    private func randomCGFloat() -> CGFloat {
        return CGFloat.random(in: -5..<2)
    }
}

struct Flower_Previews: PreviewProvider {
    static var previews: some View {
        Flower(animation: testAnimation)
    }
}

var testAnimation = Animation.interactiveSpring(response: 0.8, dampingFraction: 0.5, blendDuration: 2).repeatForever()
