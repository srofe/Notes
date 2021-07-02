//
//  HeaderView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 2/7/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Capsule()
                .frame(height: 1)
            Image(systemName: "note.text")
            Capsule()
                .frame(height: 1)
        }
        .foregroundColor(.accentColor)    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
