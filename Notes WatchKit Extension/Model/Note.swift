//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Simon Rofe on 22/6/21.
//

import Foundation

struct Note: Identifiable, Encodable {
    let id: UUID
    let text: String
}
