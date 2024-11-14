//
//  ContentView.swift
//  PhotoPickerDemo
//
//  Created by Bennett Lee on 11/4/24.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State var avatarItem: PhotosPickerItem? = nil
    @State private var avatarImage: Image?

    var body: some View {
        VStack {
            PhotosPicker("Select Avatar", selection: $avatarItem, matching: .images)

            // transform PhotosPickerItem to a data type that the image component support

            if let avatarImage {
                avatarImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }

        }
        .padding()
        .onChange(of: avatarItem) { oldValue, newValue in
            print("oldValue \(oldValue) newValue \(newValue)")
            Task {
                if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data) {
                        avatarImage = Image(uiImage: uiImage)
                        return
                    }
                }
                print("Failed")
            }
        }
    }
}

#Preview {
    ContentView()
}
