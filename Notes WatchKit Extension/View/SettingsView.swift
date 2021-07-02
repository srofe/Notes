//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 2/7/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
