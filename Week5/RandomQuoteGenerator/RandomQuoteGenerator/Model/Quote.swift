//
//  Quote.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 9/25/24.
//

import Foundation

struct Quote: Identifiable, Hashable, Codable {
    let id : UUID
    let message: String
    let author: String

    init(id: UUID, message: String, author: String) {
        self.id = id
        self.message = message
        self.author = author
    }

    init(message: String, author: String) {
        self.id = UUID()
        self.message = message
        self.author = author
    }
}


