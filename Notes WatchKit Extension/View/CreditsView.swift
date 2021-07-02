//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 2/7/21.
//

import SwiftUI

struct CreditsView: View {
    @State private var randomNumber: Int = Int.random(in: 1 ..< 4)
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }

    var body: some View {
        VStack(spacing: 3) {
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
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
