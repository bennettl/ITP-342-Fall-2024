//
//  QuoteCell.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

struct QuoteCell: View {
    let quote: Quote
    var body: some View {
        NavigationLink(value: quote) {
            VStack (alignment: .leading) {
                Text(quote.message)
                Text(quote.author)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    QuoteCell(quote: QuoteViewModel().quotes.first!)
}
