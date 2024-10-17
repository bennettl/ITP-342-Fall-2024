//
//  QuoteEditPage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI


struct QuoteEditPage: View {

    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var quoteViewModel: QuoteViewModel

    @State var message = ""
    @State var author = ""

    let quote: Quote

    init(quote: Quote) {
        message = quote.message
        author = quote.author
        self.quote = quote
    }

    var body: some View {
        VStack {
            TextField("Message", text: $message)
                .padding()
                .background(Color.white)
            TextField("Author", text: $author)
                .padding()
                .background(Color.white)
            Spacer()
        }
        .padding()
        .navigationTitle("Edit Quote")
        .background(
            Color.teal
        )
        .toolbar {
            Button("Save") {
                // Update quote

                let newQuote = Quote(
                    id: quote.id,
                    message: message,
                    author: author
                )
//                let index = ??

//                var index: Int? = nil
//                for i, quote in quotes.enumerated() {
//                    if quote.id == self.quote.id {
//                        index = i
//                        break
//                    }
//                }

                let index = Int(
                    quoteViewModel.quotes.firstIndex { quote in
                        quote.id == self.quote.id
                    }!
                )

                quoteViewModel.update(
                    quote: newQuote,
                    at: index
                )
                dismiss()
            }
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    NavigationStack {
        QuoteEditPage(quote: QuoteViewModel().quotes.first!)
    }
}
