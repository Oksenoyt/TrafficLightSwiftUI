//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Elenka on 10.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                VStack {
                    CircleLightView(color: .red)
                    CircleLightView(color: .yellow)
                    CircleLightView(color: .green)
                    Spacer()
                }
                Button(action: { tapCount += 1 }) {
                    Text("Switch Light").font(.title)
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
