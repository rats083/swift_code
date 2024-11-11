//
//  11_StateBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 11/11/24.
//

import SwiftUI

struct _1_StateBootcamp: View {
    
    @State var backGroundColor: Color = .green
    @State var myTitle: String = "My Title"
    @State var count = 0
    
    var body: some View {
        ZStack {
            //background
            
            backGroundColor
                .edgesIgnoringSafeArea(.all)
            
            //Content Layer.
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button #1") {
                        backGroundColor = .red
                        myTitle = "Button #1 was pressed!"
                        count += 1
                    }

                    Button("Button #2") {
                        backGroundColor = .purple
                        myTitle = "Button #2 was pressed!"
                        count -= 1
                    }
                    
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    _1_StateBootcamp()
}
