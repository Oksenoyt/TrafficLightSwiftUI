//
//  CircleLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Arseniy Oksenoyt on 10.09.2022.
//

import SwiftUI

struct CircleLightView: View {
//    var id = UUID()
    
    var color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(
                width: UIScreen.main.bounds.width / 3,
                height: UIScreen.main.bounds.width / 3
            )
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleLightView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLightView(color: .blue)
    }
}
