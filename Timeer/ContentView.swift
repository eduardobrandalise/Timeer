//
//  ContentView.swift
//  Timeer
//
//  Created by Eduardo Brandalise on 10/08/20.
//  Copyright © 2020 Eduardo Brandalise. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var circleColor = Color.red
    
    var body: some View {
        ZStack {
            Color.blue
            
            VStack {
                Text("First Line").font(.largeTitle)
                Text("Second line")
                Text("Third line")
                Text("Fourth line")
                
                HStack {
                    RoundedRectangle(cornerRadius: 30)
                    RoundedRectangle(cornerRadius: 30)
                    RoundedRectangle(cornerRadius: 30)
                    RoundedRectangle(cornerRadius: 30)
                }
                
                Circle().foregroundColor(circleColor)
                
                Button("Change button's color") {
                    self.circleColor = Color.green
                }.colorInvert()
            }.font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
