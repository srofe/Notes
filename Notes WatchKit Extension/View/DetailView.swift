//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 23/6/21.
//

import SwiftUI

struct DetailView: View {
    let note: Note
    let count: Int
    let index: Int

    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            Text("Header")
            Text("Content")
            Text("Footer")
        }
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(note: Note(id: UUID(), text: "Hell, World!"), count: 5, index: 1)
    }
}
