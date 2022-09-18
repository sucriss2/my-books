//
//  BookDetailViewModel.swift
//  MyBooks
//
//  Created by Suh on 15/09/22.

import Foundation
import SwiftUI

class BookDetailViewModel: ObservableObject {
    let book: Book
    let booksManager: BooksManager
    @Published var buttonTitle: String = "Adicionar"
    @Published var isFavorite: Bool = false

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
        update()
    }

    func addOrRemoveBook() {
        if booksManager.findBook(id: book.id).isEmpty {
            booksManager.add(book: book)
        } else {
            booksManager.deleteBook(id: book.id)
        }
        update()
    }

    private func update() {
        isFavorite = booksManager.findBook(id: book.id).isEmpty == false
        buttonTitle = isFavorite ? "Remover" : "Adicionar"
    }

}
