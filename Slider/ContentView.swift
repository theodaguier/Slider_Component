//
//  ContentView.swift
//  Slider
//
//  Created by Théo Daguier on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var degree : Double = 0
    @State private var text : String = "Ca caille"
    
    func textProgress(){
        if degree <= 0 {
            text = "Ca caille"
        } else if degree <= 10 {
            text = "aaaaa"
        }
    }
        
    var body: some View {
        VStack {
            // Dynamic text
            HStack{
                Text(text)
            }
            // Slider Settings
            Slider(value: $degree, in: 0...50)
            Text(String(format: "%.0f", degree))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
