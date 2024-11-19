//
//  ListBootCamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 13/11/24.
//

import SwiftUI

struct ListBootCamp: View {

    @State private var fruits = ["Apple", "Banana", "Orange", "Grapes"]
    @State private var vegetables = ["Carrot", "Potato", "Tomato", "Pepper"]

    
    var body: some View {

        NavigationStack {
            List {
                // Fruits Section
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.title3)
                    }
                }
                //Vegitable
                Section("Vegetables") {
                    ForEach(vegetables, id: \.self) { vegitable in
                        Text(vegitable.capitalized)
                            .font(.title3)
                    }
                    //                .onDelete { indeexSet in
                    //                    delete(indexSet: indeexSet)
                    //                }
                    .onDelete(perform: delete)
                }
            }
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
        
    }
    
    func delete(indexSet: IndexSet) {
        vegetables.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListBootCamp()
}
