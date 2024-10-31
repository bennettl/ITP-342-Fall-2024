//
//  ContentView.swift
//  NetworkingDemo
//
//  Created by Bennett Lee on 10/23/24.
//

import SwiftUI


struct ContentView: View {
    @State var photoUrl: URL? = nil

    var body: some View {
        ZStack {
            AsyncImage(url: photoUrl)
            Button("Call Unsplash") {
                Task {
                    await loadImage()
                }
            }
        }
    }

    private func loadImage () async {
        // Make a network request to get a random photo from Unsplash
        let url = URL(string: "https://api.unsplash.com/photos/random")!
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("Client-ID PogBExtEuLXYbPJTMfUi3qT--DNRKluit8dBGbKlsMo", forHTTPHeaderField: "Authorization")

        // Modern approach with structured concurrency

        let (data, response) = try! await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        let photo = try! decoder.decode(Photo.self, from: data)

        photoUrl = URL(string: photo.urls.regular)!

        // Completion handler approach to concurrent programming - antiquated / legacy
//        URLSession.shared.dataTask(
//            with: urlRequest,
//            completionHandler: { (data, response, error) in
//                print("data \(data) response \(response) \(error)")
//
//                let decoder = JSONDecoder()
//                let photo = try! decoder.decode(Photo.self, from: data!)
//
//                photoUrl = URL(string: photo.urls.regular)!
//            }
//        ).resume()
    }
}

#Preview {
    ContentView()
}
