//
//  StepperBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 17/12/24.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var incrementWidth: CGFloat = 10
    
    var body: some View {
        VStack {
            Stepper("Stepper : \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: (100 + incrementWidth), height: 100)
            
            Stepper("Stepper 2") {
                //increment
//                incrementWidth += 10
                incrementWidth(amount: +100)
            } onDecrement: {
                //onDecrement
//                incrementWidth -= 10
                incrementWidth(amount: -100)
            }
            .padding(50)
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeOut) {
            incrementWidth += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
