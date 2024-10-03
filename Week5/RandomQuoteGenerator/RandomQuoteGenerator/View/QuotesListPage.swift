//
//  QuotesListPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/2/24.
//

import SwiftUI

struct QuoteCell: View {
    let quote: Quote
    var body: some View {
        VStack (alignment: .leading) {
            Text(quote.message)
            Text(quote.author)
                .font(.subheadline)
        }
    }
}

struct QuotesListPage: View {
    let quotes: [Quote]
    var body: some View {
        List(quotes) {
            QuoteCell(quote: $0)
        }
    }
}

#Preview {
    QuotesListPage(quotes: QuoteViewModel().quotes)
}
