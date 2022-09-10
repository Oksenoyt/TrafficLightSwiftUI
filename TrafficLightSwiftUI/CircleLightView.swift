//
//  CircleLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Elenka on 10.09.2022.
//

import SwiftUI

struct CircleLightView: View {
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleLightView_Previews: PreviewProvider {
    static var previews: some View {
        CircleLightView()
    }
}
