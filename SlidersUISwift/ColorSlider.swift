//
//  Slider.swift
//  SlidersUISwift
//
//  Created by Vladyslav Haidaienko on 31.10.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @State private var inputTextValue = ""
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))").foregroundColor(.white)
                .frame(width: 35, height: 30)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { isOnFocus in
                    inputTextValue = "\(lround(isOnFocus))"
                }
            TextFieldForSlider(inputSliderValue: $inputTextValue, value: $sliderValue)
        }
        .onAppear {
            inputTextValue = "\(lround(sliderValue))"
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(0), color: .red)
    }
}
