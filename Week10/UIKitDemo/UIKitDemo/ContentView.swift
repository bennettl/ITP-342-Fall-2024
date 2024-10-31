//
//  ContentView.swift
//  UIKitDemo
//
//  Created by Bennett Lee on 10/30/24.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var name = ""
    var body: some View {
        VStack (spacing: 20) {
            Spacer()
            Text(name)
                .font(.title)
                .foregroundStyle(Color.white)
            HStack {
                Text("Swift UI")
                TextField("Name", text: $name)
                    .padding()
                    .foregroundStyle(Color.black)
                    .background(Color.white)
            }
            HStack {
                Text("UIKit")
                MyTextField(text: $name)
                    .frame(height: 24)
                    .padding()
                    .background(Color.white)
            }
            Spacer()
        }
        .padding()
        .background(Color.gray)
        .foregroundStyle(Color.white)
    }
}

struct MyTextField : UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.attributedPlaceholder = NSAttributedString(
                   string: "UIKit Name",
                   attributes: [
                    .foregroundColor: UIColor.systemTeal
                   ]
               )

        textField.delegate = context.coordinator
        return textField
    }

    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    class Coordinator : NSObject, UITextFieldDelegate {
        @Binding var text: String

        init(text: Binding<String>){
            self._text = text
        }

        // TextField will invoke this method every single time the user has change characters in the textfield
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
}

#Preview {
    ContentView()
}
