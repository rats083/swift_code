//
//  ShapeseBootCamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 02/11/24.
//

import SwiftUI

struct ShapeseBootCamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
            
//            .fill(.blue)
//            .foregroundColor(.red)
//            .stroke()
//            .stroke(.pink)
//            .stroke(lineWidth: 50.0)
//            .stroke(.red, style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [10]))
            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 40)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapeseBootCamp()
}
