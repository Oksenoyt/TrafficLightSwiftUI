//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Arseniy Oksenoyt on 10.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonText = "BEGIN"
    
    @State private var activeLight = 0
    
    @State private var redColorOpacity = 0.4
    @State private var yellowColorOpacity = 0.4
    @State private var greenColorOpacity = 0.4
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                VStack {
                    CircleLightView(color: .red).opacity(redColorOpacity)
                    CircleLightView(color: .yellow).opacity(yellowColorOpacity).accessibilityLabel("yellow").accessibilityIdentifier("yellow")
                    CircleLightView(color: .green).opacity(greenColorOpacity)
                    Spacer()
                }
                Button(action: buttonTapped) {
                    Text(buttonText).font(.title)
                        .frame(width: 170, height: 60)
                        .accentColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white,lineWidth: 4))
                }
            }.padding()
        }
    }
    
    private func buttonTapped() {
        buttonText = "NEXT"
        
        switch activeLight {
        case 1:
            redColorOpacity = 0.4
            yellowColorOpacity = 1.0
            activeLight = 2
        case 2:
            yellowColorOpacity = 0.4
            greenColorOpacity = 1.0
            activeLight = 3
        default:
            redColorOpacity = 1.0
            greenColorOpacity = 0.4
            activeLight = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
