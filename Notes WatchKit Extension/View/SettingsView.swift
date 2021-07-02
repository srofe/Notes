//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 2/7/21.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("lineCount") var lineCount: Int = 1

    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")
            Text("Lines \(lineCount)".uppercased())
                .fontWeight(.bold)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
