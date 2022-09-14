//
//  Book.swift
//  MyBooks
//
//  Created by Suh on 08/09/22.
// swiftlint: disable line_length

import Foundation

struct Book: Codable, Identifiable {
    let id: String
    let title: String
    let author: String
    let description: String
    let page: Int
    let genre: String

}

extension Book {
    static func fixture(
        id: String = UUID().uuidString,
        title: String = "O início do Feminismo no Brasil",
        author: String = "Leolinda Dalto",
        description: String = "O início do feminismo no Brasil foi o título atribuído...a primeira entidade nacional dedicada à proteção dos índios.",
        page: Int = 67,
        genre: String = "História"
    ) -> Book {
        Book(id: id, title: title, author: author, description: description, page: page, genre: genre)
    }

}
