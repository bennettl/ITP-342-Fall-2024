//
//  Quote.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 9/25/24.
//

import Foundation

struct Quote: Identifiable {
    let id : UUID = UUID()
    let message: String
    let author: String
}
