//
//  LeafView.swift
//  Animaiton
//
//  Created by Maxim Macari on 16/11/20.
//

import SwiftUI

struct Leaf: View {
    
    
    var start = UnitPoint(x: 0, y: -2)
    var end = UnitPoint(x: 4, y: 0)
    
    
    var body: some View {
        VStack{
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
                )
                .frame(width: 10, height: 10)
                .padding(.vertical, 8)
                
            
            LeafPath()
                
                .fill(
                    LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
                    )
                .frame(width: 100, height: 100)
                
        }
        
            
    }
}

let colors: [Color] = [Color.blue, Color.red, Color.green, Color.purple, Color.pink, Color.yellow, Color.orange]

