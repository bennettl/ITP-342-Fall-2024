//
//  QuotesListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/2/24.
//

import SwiftUI


struct QuotesListPage: View {
    let quotes: [Quote]
    var body: some View {
        NavigationStack {
            List(quotes) {
                QuoteCell(quote: $0)
            }
            .navigationTitle("Quotes")
            .navigationDestination(for: Quote.self) { quote in
                QuoteEditPage(quote: quote)
            }
        }
    }
}

#Preview {
    QuotesListPage(quotes: QuoteViewModel().quotes)
}
