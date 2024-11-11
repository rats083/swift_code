//
//  IconsBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 03/11/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        //        Image(systemName: "heart.fill")
        //        Image(systemName: "paperplane.fill")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
        //            .resizable()
        //            .aspectRatio(contentMode: .fit)
        //            .aspectRatio(contentMode: .fill)
        //            .clipped()
        //            .scaledToFit()
            .scaledToFill()
        //            .font(.largeTitle)
        //            .font(.system(size: 200))
        //            .foregroundStyle(.red)
            .frame(width: 300, height: 300)
        //            .clipped(antialiased: true)
        //            .clipped()
        
    }
}

#Preview {
    IconsBootcamp()
}
