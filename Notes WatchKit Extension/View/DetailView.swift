//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 23/6/21.
//

import SwiftUI

struct DetailView: View {
    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    let note: Note
    let count: Int
    let index: Int

    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            HeaderView()
            Spacer()
            noteBody
            Spacer()
            footer
        }
        .padding(3)
    }

    var noteBody: some View {
        ScrollView(.vertical) {
            Text(note.text)
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
        }
    }

    var footer: some View {
        HStack(alignment: .center) {
            Image(systemName: "gear")
                .imageScale(.large)
                .onTapGesture {
                    isSettingsPresented.toggle()
                }
                .sheet(isPresented: $isSettingsPresented) {
                    SettingsView()
                }
            Spacer()
            Text("\(count) / \(index + 1)")
            Spacer()
            Image(systemName: "info.circle")
                .imageScale(.large)
                .onTapGesture {
                    isCreditsPresented.toggle()
                }
                .sheet(isPresented: $isCreditsPresented) {
                    CreditsView()
                }
        }
        .foregroundColor(.secondary)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(note: Note(id: UUID(), text: "Hello, World!"), count: 5, index: 1)
    }
}
