//
//  BooksManager.swift
//  MyBooks
//
//  Created by Suh on 10/09/22.

import Foundation

class BooksManager {
    var books: [Book] = []

    private let manager = FileManager.default

    private var filePath: URL {
        let urlDirectories = manager.urls(for: .documentDirectory, in: .userDomainMask)
        return urlDirectories[0].appendingPathComponent("mybooks.json")
    }

    init() {
        loadBooks()
    }

    func removeAll() {
        books.removeAll()
        savebooks()
    }

    func add(book: Book) {
        if findBook(id: book.id).isEmpty {
            books.append(book)
            savebooks()
        }

    }

    func findBook(id: String) -> [Book] {
        let books = books.filter { element in
            return element.id == id
        }
        return books

    }

    func deleteBook(id: String) {
        if findBook(id: id).isEmpty == false {
            for (index, value) in books.enumerated() {
                if value.id == id {
                    books.remove(at: index)
                    print(index)
                    savebooks()
                }
            }
        }
        // livro não deletado
    }

    private func loadBooks() {
        if manager.fileExists(atPath: filePath.path) {
            if let data = try? Data(contentsOf: filePath) {
                if let books = try? JSONDecoder().decode([Book].self, from: data) {
                    self.books = books
                }
            }
        }
    }

    private func savebooks() {
        do {
            let encoder = JSONEncoder()
            let booksData = try encoder.encode(books)
            if manager.createFile(atPath: filePath.path, contents: booksData, attributes: nil) == false {
                print("Falha ao salvar arquivo")
            }
        } catch {
            print(error.localizedDescription)
        }
    }

}
