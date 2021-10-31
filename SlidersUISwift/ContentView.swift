//
//  ContentView.swift
//  SlidersUISwift
//
//
//  Created by Vladyslav Haidaienko on 29.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 0.4, green: 0.55, blue: 0.9)
                .ignoresSafeArea()
            VStack(spacing: 40) {
                ColoredView(
                    red: redSliderValue,
                    green: greenSliderValue,
                    blue: blueSliderValue
                )
                    .padding(.top, 40.0)
                VStack(spacing: 15) {
                    ColorSlider(sliderValue: $redSliderValue, color: .red)
                    ColorSlider(sliderValue: $greenSliderValue, color: .green)
                    ColorSlider(sliderValue: $blueSliderValue, color: .blue)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

