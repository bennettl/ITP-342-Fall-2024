//
//  ContentView.swift
//  HelloSwiftui
//
//  Created by Bennett Lee on 9/16/24.
//

import SwiftUI


@Observable
class SearchModel {
    var query: String = ""
}

struct SearchView: View {
  @Bindable var model: SearchModel

  var body: some View {
    TextField("Search query", text: $model.query)
  }
}

struct ContentView: View {
    @State var model = SearchModel()

    var body: some View {
        SearchView(model: model)
    }
}

#Preview {
    ContentView()
}
