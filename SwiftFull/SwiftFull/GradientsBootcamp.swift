//
//  GradientsBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 02/11/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 200)
//            .background(.red)
            .foregroundStyle(
////                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .leading,
//                    endPoint: .trailing)
                RadialGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .center,
                    startRadius: 5,
                    endRadius: 100
                )
            )
            
    }
}

#Preview {
    GradientsBootcamp()
}
