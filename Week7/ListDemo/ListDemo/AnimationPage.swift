//
//  AnimationPage.swift
//  ListDemo
//
//  Created by Bennett Lee on 10/2/24.
//

import SwiftUI

struct AnimationPage: View {

    @State var scale = 1.0
    @State var opacity = 1.0

    var body: some View {
//        Circle()
        Image(systemName: "heart.fill")
//            .fill(Color.teal)
            .foregroundStyle(Color.pink)
            .font(.system(size: 100.0))
//            .frame(width: 100)
            .scaleEffect(scale)
            .animation(.easeInOut, value: scale)
            .opacity(opacity)
            .animation(.easeInOut.delay(1.0), value: opacity)
            .onTapGesture {
//                withAnimation(.linear){
                    scale *= 2.0
                    opacity = 0
//                }
            }

    }
}

#Preview {
    AnimationPage()
}
