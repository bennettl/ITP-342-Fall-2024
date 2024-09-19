//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Bennett Lee on 9/11/24.
//

import UIKit

// Hello world
// Glad to meet your

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label1 = UILabel()
        label1.text = "Hello World"
        label1.sizeToFit()

        let x = (UIScreen.main.bounds.width - label1.frame.width) / 2.0
        let y = (UIScreen.main.bounds.height - label1.frame.height) / 2.0

        label1.frame = CGRect(x: x, y: y, width: label1.frame.width, height: label1.frame.height)

        view.addSubview(label1)

        let label2 = UILabel()
        label1.text = "Hello World"
        label1.sizeToFit()

        let x2 = (UIScreen.main.bounds.width - label1.frame.width) / 2.0
        let y = (UIScreen.main.bounds.height - label1.frame.height) / 2.0

        label1.frame = CGRect(x: x, y: y, width: label1.frame.width, height: label1.frame.height)

        view.addSubview(label1)

        // Do any additional setup after loading the view.
    }


}

