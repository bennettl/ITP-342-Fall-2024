//
//  ContentView.swift
//  StateManagementRecap
//
//  Created by Bennett Lee on 9/18/24.
//

import SwiftUI
import Combine


struct ContentViewPuppy: View {

    @State var showPuppy = true
    @State var stepperValue = 0
    @State var text = ""

    var body: some View {
        VStack{


            TextField("Name", text: $text)

            if showPuppy {
                Image("puppy")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 200)
                    .border(Color.red, width: 10.0)
                    .clipShape(RoundedRectangle(cornerRadius: 20.0))
                //                .clipped()
                //                .resizable()
                //                .aspectRatio(contentMode: .fit)
            }

            Toggle("Show Puppy", isOn: $showPuppy)
                .tint(Color.red)
                .toggleStyle(.switch)

        }
    }

}

#Preview {
    ContentViewPuppy()
}
