//
//  RandomQuotePage.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 9/25/24.
//

import SwiftUI

struct RandomQuotePage: View {
    @EnvironmentObject var quoteViewModel: QuoteViewModel

    var body: some View {

        VStack(spacing: 16) {
            Text(quoteViewModel.currentQuote.message)
                .font(.title)
            Text(quoteViewModel.currentQuote.author)
                .font(.title2)
                .foregroundStyle(Color.teal)

            Button("Generate"){
                quoteViewModel.randomize()
            }
            .font(.title2)
        }
    }
}

#Preview {
    RandomQuotePage()
}
