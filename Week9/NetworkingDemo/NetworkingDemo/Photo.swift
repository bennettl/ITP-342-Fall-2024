//
//  Photo.swift
//  NetworkingDemo
//
//  Created by Bennett Lee on 10/23/24.
//

import Foundation


struct Urls : Codable {
    let raw: String
    let full: String
    let regular: String
}

struct Photo : Codable {
    let id: String
    let slug: String
    let likes: Int
    let urls: Urls
}
