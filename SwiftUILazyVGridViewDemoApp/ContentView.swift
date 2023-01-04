//
//  ContentView.swift
//  SwiftUILazyVGridViewDemoApp
//
//  Created by ryota on 2023/01/04.
//

import SwiftUI

struct ContentView: View {
    let catsList: [Cat] = [
        Cat(image: "hijiki", name: "ひじき"),
        Cat(image: "thukushi", name: "つくし"),
        Cat(image: "hijiki", name: "ひじき"),
        Cat(image: "thukushi", name: "つくし"),
        Cat(image: "hijiki", name: "ひじき"),
        Cat(image: "thukushi", name: "つくし")]
    
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 100, maximum: 150))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(catsList) { cat in
                    VStack {
                        Image(cat.image).resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text(cat.name)
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
