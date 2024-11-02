//
//  ContentView.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 02/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello Ratnesh!")
                .font(.title)
                .padding()
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(.footnote)
                .fontWeight(.semibold)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
