//
//  NavigationViewBootcamp.swift
//  SwiftFull
//
//  Created by ratnesh-jci on 13/11/24.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!") {
//                    Text("Second Screen")
                    MyOtherScrren()
                }
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
                Text("Hello World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
//            .navigationBarItems(leading: <#T##View#>)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("Leading button tapped!")
                    }) {
                        Image(systemName: "person.circle")
                        Text("Profile")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
//                    Button {
//                        print("Setting Button Pressed.")
//                    } label: {
//                        Image(systemName: "gear")
//                    }

                    HStack {
                        NavigationLink {
                            MyOtherScrren()
                        } label: {
                            Image(systemName: "gear")
                        }
                        NavigationLink {
                            MyThirdScreen()
                        } label: {
                            Image(systemName: "person")
                                .foregroundStyle(.red)
                        }
                    }

                    
                }
            }

        }
    }
}

struct MyOtherScrren: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(edges: .all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
                
            VStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here") {
                    //                Text("3rd Screen")
                    MyThirdScreen()
                }
            }
            
        }
    }
}


struct MyThirdScreen: View {
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(edges: .all)
                .navigationTitle("Green Screen")
        }
    }
}
#Preview {
    NavigationViewBootcamp()
}
