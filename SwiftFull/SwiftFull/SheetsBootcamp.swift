//
//  SheetsBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 12/11/24.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(edges: .all)
            
            Button {
                showSheet.toggle()
                
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.title)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .clipShape(.capsule)
            }
            ///Filled full screen
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
            /// FIll partial screen. Let's avoid add mutlple sheet and if else logic on screen.
//            .sheet(isPresented: $showSheet) {
            //DO NOT ADD CONDITIONAL LOGIC HERE>
//                SecondScreen()
//            }
            
            Spacer()
            
        }
    }
}

struct SecondScreen: View {
    
    //    @Environment(\.isPresented) var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(edges: .all)
            
            Button {
                //                showSheet.toggle()
                dismiss()
                
            } label: {
                
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
                
            }
            
            Spacer()
            
        }
        
    }
}

#Preview {
    SheetsBootcamp()
    //    SecondScreen()
}
