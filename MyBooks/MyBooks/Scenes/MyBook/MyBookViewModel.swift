//
//  MyBookViewModel.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.
// swiftlint: disable line_length

import Foundation
import Combine

class MyBookViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var haveNoBooks: Bool = true

    var bookManager = BooksManager()

    func fetchBooks() {
        self.books = bookManager.books
        haveNoBooks = books.isEmpty
    }

    func initialize() {
        bookManager.add(book: Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do dos índios.", page: 67, genre: "História"))
        bookManager.add(book: Book(id: "KJGGIW928974", title: "O inícioBrasil", author: "Suelen Vaz", description: "O feminismo no Brasil.", page: 71, genre: "Biografia"))
    }

    func removeAll() {
        bookManager.removeAll()
    }

}
