//
//  QuoteViewModel.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 9/25/24.
//

import Foundation
import Combine

// Quote --> save it to disk??,
        // we need to convert a Swift native object into a standadized formatted string
            // seralization, marshalling, encoding
/**
  {
    "id": "",
    "author": "",
    "message": ""
  }
 */


// Manage a list of quotes
class QuoteViewModel : ObservableObject {

    @Published var quotes: [Quote]
    @Published var currentIndex = 0

    private let quotesPath: URL

    var currentQuote : Quote {
        quotes[currentIndex]
    }

    init(){

        // 1. Where are we saving to?
        let documentsDirectory = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        ).first!

        quotesPath = URL(string: "\(documentsDirectory)quotes.json")!

        quotes = []

        load()
    }


    // CRUD
    func create(message: String, author: String) {
        let quote = Quote(message: message, author: author)
        quotes.append(quote)

        save()
    }

    func update(quote: Quote, at index: Int){
        // Defensive programming
        // Early return pattern
        // Validation and protect against bad input
        if index >= quotes.count || index < 0 {
            return
        }

        quotes[index] = quote
        save()
    }

    func remove(at index: Int){
        if index >= quotes.count || index < 0 {
            return
        }

        quotes.remove(at: index)
        save()
    }

    func randomize() {
        var randomIndex = Int.random(in: 0..<quotes.count)

        while randomIndex == currentIndex {
            randomIndex = Int.random(in: 0..<quotes.count)
        }

        currentIndex = randomIndex
    }

    // Persisting our native Swift quotes array into a JSON array string in the documents directory
    private func save() {
        print("quotes path: \(quotesPath)")
        // 2. What are we saving
        let data = try! JSONEncoder().encode(quotes)

        try! data.write(to: quotesPath)
    }

    // Reading and loading our JSON array string from the documents directory into our native Swift quotes array
    private func load() {
//        [
//            {
//                "author": "Magen",
//                "message": "Live laugh love!!",
//                "id": "3E0597E3-3695-4ADC-BA30-CF2EF2F7ACBF"
//            },..

        do {
            let data = try Data(contentsOf: quotesPath)
            quotes = try JSONDecoder().decode(Array<Quote>.self, from: data)
        } catch {
            quotes = [
                Quote(message: "Live laugh love!!", author: "Magen"),
                Quote(message: "Just do it?", author: "Joseph"),
                Quote(message: "I'm lovin' it", author: "McDonalds"),
                Quote(message: "Fresh never frozen", author: "Wendy's"),
                Quote(message: "Never say never", author: "Justin Bieber")
            ]

        }


    }
}

