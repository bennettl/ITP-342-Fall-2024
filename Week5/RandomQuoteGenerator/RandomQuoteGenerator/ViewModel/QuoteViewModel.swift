//
//  QuoteViewModel.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 9/25/24.
//

import Foundation
import Combine


// Manage a list of quotes
class QuoteViewModel : ObservableObject {



    var quotes: [Quote]
    @Published var currentIndex = 0

    var currentQuote : Quote {
        quotes[currentIndex]
    }

    init(){
        quotes = [
            Quote(message: "Live laugh love!!", author: "Magen"),
            Quote(message: "Just do it?", author: "Joseph"),
            Quote(message: "I'm lovin' it", author: "McDonalds"),
            Quote(message: "Fresh never frozen", author: "Wendy's"),
            Quote(message: "Never say never", author: "Justin Bieber")
        ]
    }

    // CRUD
    func create(message: String, author: String) {
        let quote = Quote(message: message, author: author)
        quotes.append(quote)
    }

    func update(quote: Quote, at index: Int){
        // Defensive programming
        // Early return pattern
        // Validation and protect against bad input
        if index >= quotes.count || index < 0 {
            return
        }

        quotes[index] = quote
    }

    func remove(at index: Int){
        if index >= quotes.count || index < 0 {
            return
        }

        quotes.remove(at: index)
    }

    func randomize() {
        var randomIndex = Int.random(in: 0..<quotes.count)

        while randomIndex == currentIndex {
            randomIndex = Int.random(in: 0..<quotes.count)
        }

        currentIndex = randomIndex
    }
}

