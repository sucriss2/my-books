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
            Group {
                if viewModel.isLoading {
                    Text("Carregando...")
                } else if viewModel.errorLibrary {
                    ErrorView(
                        message: "Houve algum erro",
                        buttonTitle: "Tente novamente!"
                    ) {
                        viewModel.fetchBooks()
                    }
                } else {
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
            }.navigationBarTitle("Biblioteca")
        }
        .onAppear {
            viewModel.fetchBooks()
        }
    }

}
