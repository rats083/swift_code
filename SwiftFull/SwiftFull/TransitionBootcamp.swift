//
//  TransitionBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 12/11/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .leading))
                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(AnyTransition./*opacity*/.animation(.easeInOut))
//                    .animation(.spring, value: 0.0)
            }
                
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

#Preview {
    TransitionBootcamp()
}
