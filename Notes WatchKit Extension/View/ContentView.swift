//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 22/6/21.
//

import SwiftUI

struct ContentView: View {
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""

    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
        }
        .navigationTitle("Notes")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
