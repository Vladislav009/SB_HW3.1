//
//  ContentView.swift
//  SB_HW3.1
//
//  Created by Vladislav Kulak on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive = false
    
    @State private var redLight = false
    @State private var yellowLight = false
    @State private var greenLight = false
    
    var body: some View {
        VStack {
            VStack(){
                ColorCircle(color: redLight ? .red : .red.opacity(0.3))
                ColorCircle( color: yellowLight ? .yellow : .yellow.opacity(0.3))
                ColorCircle( color: greenLight ? .green : .green.opacity(0.3))
            }
            Spacer()
            
            Button(action: {
                isActive = true
                
                if redLight == false &&
                    yellowLight == false {
                    greenLight = false
                    redLight = true
                } else if redLight && !yellowLight && !greenLight {
                    redLight = false
                    yellowLight = true
                } else if !redLight && yellowLight && !greenLight {
                    yellowLight = false
                    greenLight = true
                }
                
            }) {
                Text(isActive ? "NEXT" : "START")
                    .font(.title)
                    .frame(width: 150)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 10)
                    )
                    .cornerRadius(20)
                
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
