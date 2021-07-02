//
//  NotesView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 22/6/21.
//

import SwiftUI

struct NotesView: View {
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""

    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                Button {
                    guard text.isEmpty == false else { return }
                    let note = Note(id: UUID(), text: text)
                    notes.append(note)
                    text = ""
                    save()
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 42, weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
            }
            Spacer()
            if notes.count >= 1 {
                notesList
            } else {
                notesListPlaceholder
            }
        }
        .navigationTitle("Notes")
        .onAppear(perform: {
            load()
        })
    }

    private var notesList: some View {
        List {
            ForEach(0 ..< notes.count, id: \.self) { i in
                NavigationLink(destination: DetailView(note: notes[i], count: notes.count, index: i)) {
                    HStack {
                        Capsule()
                            .frame(width: 4)
                            .foregroundColor(.accentColor)
                        Text(notes[i].text)
                            .lineLimit(lineCount)
                            .padding(.leading, 5)
                    }
                }
            }
            .onDelete(perform: delete)
        }
    }

    private var notesListPlaceholder: some View {
        Group {
            Spacer()
            Image(systemName: "note.text")
                .resizable()
                .scaledToFit()
                .foregroundColor(.gray)
                .opacity(0.25)
                .padding(25)
            Spacer()
        }
    }

    func save() {
        do {
            let data = try JSONEncoder().encode(notes)
            let url = getDocumentDirectory().appendingPathComponent("notes")
            try data.write(to: url)
        } catch {
            print("Saving data has failed!")
        }
    }

    func load() {
        DispatchQueue.main.async {
            do {
                let url = getDocumentDirectory().appendingPathComponent("notes")
                let data = try Data(contentsOf: url)
                notes = try JSONDecoder().decode([Note].self, from: data)
            } catch {
                // Do nothing
            }
        }
    }

    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
            save()
        }
    }

    func getDocumentDirectory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
