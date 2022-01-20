//
//  ColorCircle.swift
//  SB_HW3.1
//
//  Created by Vladislav Kulak on 20.01.2022.
//

import SwiftUI

struct ColorCircle: View {
    
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle( color: .red)
    }
}
