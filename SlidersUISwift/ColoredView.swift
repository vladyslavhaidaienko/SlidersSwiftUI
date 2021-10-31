//
//  ColoredView.swift
//  SlidersUISwift
//
//  Created by Vladyslav Haidaienko on 29.10.2021.
//

import SwiftUI

struct ColoredView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(15)
            .frame(width: 300, height: 120)
            .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(.white, lineWidth: 4))
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(red: 0, green: 0, blue: 0)
    }
}
