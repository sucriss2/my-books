//
//  BookDetailViewModel.swift
//  MyBooks
//
//  Created by Suh on 15/09/22.
// swiftlint: disable line_length

import Foundation

class BookDetailViewModel: ObservableObject {
    let book: Book
    let booksManager: BooksManager
    @Published var isFavorite: Bool

    var bookTitle: String {
        book.title
    }

    var bookAuthor: String {
        book.author
    }

    var bookGenre: String {
        book.genre
    }

    var bookPage: String {
        String(book.page)
    }

    var bookDescription: String {
        book.description
    }

    init(book: Book, booksManager: BooksManager) {
        self.book = book
        self.booksManager = booksManager
        isFavorite = booksManager.findBook(id: book.id).isEmpty == false
    }

}

