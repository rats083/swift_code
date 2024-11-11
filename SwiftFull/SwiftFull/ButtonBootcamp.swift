//
//  ButtonBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 11/11/24.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "This is my title."
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press Me") {
                self.title = "Button was pressed!"
                 
                print("Button Pressed!")
            }
            .tint(.red)
            
            Button {
                self.title = "Button #2."
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        .red
                    )
                    .cornerRadius(10)
                    .shadow(radius: 20)
            }
            
            // Button #3
            
            Button {
                self.title = "Button #3."
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    }
                
            }
            
            Button {
                self.title = "Button #4."
            } label: {
                Text("Finish".uppercased())
                .font(.caption)
                .bold()
                .foregroundStyle(.gray)
                .padding()
                .padding(.horizontal, 10)
                
                .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                )
            }



        }
    }
}

#Preview {
    ButtonBootcamp()
}
