//
//  TextBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 02/11/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! I am learning new course and enjoying a lot. This is test for multiline testing and learning a lot.".capitalized)
//            .font(.title)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough()
//
//            .font(.system(size: 24, weight: .bold, design: .serif))
            .multilineTextAlignment(.center)
            .padding()
//            .baselineOffset(10.0)
//            .kerning(1) //spacing between each letter.
            .foregroundColor(Color.blue)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
