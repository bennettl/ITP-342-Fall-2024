//
//  ContentView.swift
//  HomeworkAnimation
//
//  Created by Bennett Lee on 10/16/24.
//

import SwiftUI

struct ContentView: View {
    @State var yOffset = 0.0
    @State var opacity = 1.0
    var body: some View {

        VStack {
            Rectangle()
                .fill(Color.teal)
                .frame(width: 300, height: 700)
                .offset(y: yOffset)
                .opacity(opacity)
                .onTapGesture {
                    animate()
                }
        }
        .padding()
        .toolbar {
            Button("Animate"){
                animate()
            }
        }
    }

    func animate(){
        withAnimation(
            .linear(duration: 0.5)
        ) {
            yOffset = -500
            opacity = 0
        }

        withAnimation(
            .linear(duration: 0.5)
            .delay(0.5)
        ) {
            yOffset = 500
        }
        withAnimation(
            .linear(duration: 0.5)
            .delay(1.0)
        ) {
            yOffset = 0
            opacity = 1.0
        }



//                withAnimation {
//                } completion: {
//                    withAnimation {
//                    } completion: {
//                        withAnimation {
//                        } completion: {
//                        }
//                    }
//                }
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
