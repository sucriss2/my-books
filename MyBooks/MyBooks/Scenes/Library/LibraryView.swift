//
//  LibraryView.swift
//  MyBooks
//
//  Created by Suh on 16/09/22.

import SwiftUI

struct LibraryView: View {
    @StateObject var viewModel: LibraryViewModel

    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.books, id: \.id) { book in
                    NavigationLink {
                        BookDetailView(
                            viewModel: viewModel.makeBookDetailViewModel(book: book)
                        )
                    } label: {
                        MyBookRow(book: book)
                    }
                }
            }
            .navigationTitle("Biblioteca")
        }
        .onAppear {
            viewModel.fetchBooks()
        }
    }

}
// struct LibraryView_Previews: PreviewProvider {
//    static var previews: some View {
//        LibraryView()
//    }
// }
