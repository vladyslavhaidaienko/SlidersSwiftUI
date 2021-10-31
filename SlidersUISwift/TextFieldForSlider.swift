//
//  TextField.swift
//  SlidersUISwift
//
//  Created by Vladyslav Haidaienko on 31.10.2021.
//

import SwiftUI

struct TextFieldForSlider: View {
    
    @State private var showAlert = false
    
    @Binding var inputSliderValue: String
    @Binding var value: Double
    
    var body: some View {
        TextField("", text: $inputSliderValue) { _ in
            checkValueInTextField()
        }
        .frame(width: 45, height: 30)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
            Text("Value must be from 0 to 255")
        }
    }
}

extension TextFieldForSlider {
    private func checkValueInTextField() {
        if let value = Int(inputSliderValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0.0
        inputSliderValue = "0"
    }
}

struct TextFieldForSlider_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldForSlider(
            inputSliderValue: .constant("10"),
            value: .constant(10.0)
        )
    }
}
