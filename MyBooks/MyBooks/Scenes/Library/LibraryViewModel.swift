//
//  LibraryViewModel.swift
//  MyBooks
//
//  Created by Suh on 16/09/22.
//

import Foundation
import Combine

class LibraryViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var haveNoBooks: Bool = true

    let booksManager: BooksManager
    let libraryService: LibraryService

    init(booksManager: BooksManager, libraryService: LibraryService) {
        self.booksManager = booksManager
        self.libraryService = libraryService
    }

    func fetchBooks() {
        libraryService.fetchBooks { library in
            DispatchQueue.main.async { [weak self] in
                guard let self = self else {
                    return
                }
                self.books = library.books
                self.haveNoBooks = self.books.isEmpty
            }
        } onError: { _ in
            print("Error")
        }
    }

}

extension LibraryViewModel {
    func makeBookDetailViewModel(book: Book) -> BookDetailViewModel {
        BookDetailViewModel(book: book, booksManager: booksManager)
    }
}
