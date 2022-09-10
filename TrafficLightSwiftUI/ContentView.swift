//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Elenka on 10.09.2022.
//

import SwiftUI

struct ContentView: View {
    //    @State private var tapCount = 0
    @State private var redColorOpacity = 0.4
    @State private var yellowColorOpacity = 0.4
    @State private var greenColorOpacity = 0.4
    @State private var buttonText = "BEGIN"
    @State private var includedColor = 0
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                VStack {
                    CircleLightView(color: .red).opacity(redColorOpacity)
                    CircleLightView(color: .yellow).opacity(yellowColorOpacity)
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
        
        switch includedColor {
        case 1:
            redColorOpacity = 0.4
            yellowColorOpacity = 1.0
            includedColor = 2
        case 2:
            yellowColorOpacity = 0.4
            greenColorOpacity = 1.0
            includedColor = 3
        default:
            redColorOpacity = 1.0
            greenColorOpacity = 0.4
            includedColor = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
