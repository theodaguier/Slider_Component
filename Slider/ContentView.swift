//
//  ContentView.swift
//  Slider
//
//  Created by Théo Daguier on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var degree : Double = 0
    @State private var text : String = "Ca caille ! 🥶"
    @State private var bgColor = Color.blue
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(bgColor)
            VStack {
                // Dynamic text
                VStack{
                    Text(String(format: "%.0f°C", degree))
                        .font(.largeTitle)
                    Text(text)
                        .font(.title)
                }
                // Slider Settings
                Slider(value: $degree, in: 0...50){_ in
                    switch degree {
                    case 20...29:
                        text = "C'est chill 😎"
                        bgColor = Color.orange
                    case 30...50:
                        text = "Je brule !!! 🥵"
                        bgColor = Color.red
                    default:
                        text = "Ca caille ! 🥶"
                        bgColor = Color.blue
                    }
                }
                .padding(.horizontal)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
