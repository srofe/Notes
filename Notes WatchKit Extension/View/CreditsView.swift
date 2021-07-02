//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 2/7/21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack(spacing: 3) {
            HeaderView(title: "Credits")
            Text("Simon Rofe")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            Text("Develoer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
