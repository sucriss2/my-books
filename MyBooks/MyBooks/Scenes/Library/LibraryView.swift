//
//  LibraryView.swift
//  MyBooks
//
//  Created by Suh on 16/09/22.
// swiftlint: disable line_length

import SwiftUI

struct LibraryView: View {

    @State var library: [Book] = [
        Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do dos índios.", page: 67, genre: "História"),
        Book(id: "KJGGIW928974", title: "O inícioBrasil", author: "Suelen Vaz", description: "O feminismo no Brasil.", page: 71, genre: "Biografia"),
        Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do dos índios.", page: 67, genre: "História"),
        Book(id: "KJGGIW928974", title: "O inícioBrasil", author: "Suelen Vaz", description: "O feminismo no Brasil.", page: 71, genre: "Biografia"),
        Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do dos índios.", page: 67, genre: "História"),
        Book(id: "KJGGIW928974", title: "O inícioBrasil", author: "Suelen Vaz", description: "O feminismo no Brasil.", page: 71, genre: "Biografia"),
        Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do dos índios.", page: 67, genre: "História"),
        Book(id: "KJGGIW928974", title: "O inícioBrasil", author: "Suelen Vaz", description: "O feminismo no Brasil.", page: 71, genre: "Biografia"),
        Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do dos índios.", page: 67, genre: "História"),
        Book(id: "KJGGIW928974", title: "O inícioBrasil", author: "Suelen Vaz", description: "O feminismo no Brasil.", page: 71, genre: "Biografia")]

    var body: some View {
        NavigationView {
            VStack {
                List(library, id: \.id) { book in
                    MyBookRow(book: book)
                }
            }
            .navigationTitle("Biblioteca")
        }
    }

}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
