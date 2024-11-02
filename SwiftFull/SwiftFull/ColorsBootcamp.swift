//
//  ColorsBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 02/11/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 100)
//            .foregroundStyle(.red)
//            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
            .foregroundStyle(Color("CustomColor"))
            .shadow(color: .red.opacity(0.9), radius: 30.0, x: 20, y: 20)
            
    }
}

#Preview {
    ColorsBootcamp()
}
