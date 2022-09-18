//
//  LibraryViewModel.swift
//  MyBooks
//
//  Created by Suh on 16/09/22.
//

import Foundation
import SwiftUI

class LibraryViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var haveNoBooks: Bool = true
    @Published var errorLibrary: Bool = false
    @Published var isLoading: Bool = true

    let booksManager: BooksManager
    let libraryService: LibraryService

    init(booksManager: BooksManager, libraryService: LibraryService) {
        self.booksManager = booksManager
        self.libraryService = libraryService
    }

    func fetchBooks() {
        errorLibrary = false
        isLoading = true
        libraryService.fetchBooks { library in
            DispatchQueue.main.async { [weak self] in
                guard let self = self else {
                    return
                }
                self.books = library.books
                self.haveNoBooks = self.books.isEmpty
                self.isLoading = false
            }
        } onError: { [weak self] _ in
            DispatchQueue.main.async {
                self?.errorLibrary = true
                self?.isLoading = false
            }
        }
    }

}

extension LibraryViewModel {
    func makeBookDetailViewModel(book: Book) -> BookDetailViewModel {
        BookDetailViewModel(book: book, booksManager: booksManager)
    }
}
