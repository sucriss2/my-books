//
//  MyBookListViewModel.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.
// swiftlint: disable line_length

import Foundation
import Combine

class MyBookListViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var haveNoBooks: Bool = true

    var booksManager: BooksManager

    init(booksManager: BooksManager) {
        self.booksManager = booksManager
    }

    func fetchBooks() {
        self.books = booksManager.books
        haveNoBooks = books.isEmpty
    }

    func initialize() {
        booksManager.add(book: Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do dos índios.", page: 67, genre: "História"))
        booksManager.add(book: Book(id: "KJGGIW928974", title: "O inícioBrasil", author: "Suelen Vaz", description: "O feminismo no Brasil.", page: 71, genre: "Biografia"))
    }

    func removeAll() {
        booksManager.removeAll()
    }

}

extension MyBookListViewModel {
    func makeBookDetailViewModel(book: Book) -> BookDetailViewModel {
        BookDetailViewModel(book: book, booksManager: booksManager)
    }
}
