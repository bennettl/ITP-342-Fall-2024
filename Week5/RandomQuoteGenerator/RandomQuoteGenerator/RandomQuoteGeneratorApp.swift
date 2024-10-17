//
//  RandomQuoteGeneratorApp.swift
//  RandomQuoteGenerator
//
//  Created by Bennett Lee on 9/25/24.
//

import SwiftUI

// RandomQuoteGeneratorApp
// -- TabView
// ----- QuotesListPage
// ------- QuoteEditPage
// ---------- use the view model to update

@main
struct RandomQuoteGeneratorApp: App {
    @StateObject var quoteViewModel = QuoteViewModel()
    var body: some Scene {
        WindowGroup {
            TabView {
                RandomQuotePage()
                    .tabItem {
                        Label("Random", systemImage: "quote.opening")
                    }
                QuotesListPage(quotes: quoteViewModel.quotes)
                    .tabItem {
                        Label("List", systemImage: "list.bullet")
                    }
            }.environmentObject(quoteViewModel)
        }
    }
}
