//
//  ContentView.swift
//  Animaiton
//
//  Created by Maxim Macari on 16/11/20.
//

import SwiftUI

struct ContentView: View {
    
    
    
    private let arrAnimations = [
        Animation.interactiveSpring(response: 0.1, dampingFraction: 0.9, blendDuration: 0.9).repeatForever(),
        Animation.interactiveSpring(response: 0.9, dampingFraction: 0.3, blendDuration: 10).repeatForever(),
        Animation.easeInOut(duration: 6).repeatForever(),
        Animation.easeIn(duration: 6).repeatForever(),
        Animation.easeOut(duration: 6).repeatForever(),
        Animation.spring(response: 2, dampingFraction: 0.8, blendDuration: 0.3).repeatForever(),
        Animation.spring(response: 4, dampingFraction: 0.2, blendDuration: 0.9).repeatForever(),
        Animation.linear(duration: 8).repeatForever(),
        
    ]
    
    @State var animation = Animation.easeInOut(duration: 6).repeatForever()
    
    var body: some View {
        
        Flower(animation: arrAnimations[4])
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct Home: View {
    var body: some View{
        VStack{
            Text("")
        }
    }
}

