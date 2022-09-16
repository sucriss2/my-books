//
//  MyBookListView.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.

import SwiftUI

struct MyBookListView: View {
    @StateObject var viewModel: MyBookListViewModel = MyBookListViewModel()
    @State private var showBookDetail = false

    var body: some View {
        VStack {
            NavigationView {
                VStack(alignment: .center) {
                    Text(" Meus Livros ")
                        .font(.largeTitle)
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                        .foregroundColor(.mint)

                    Spacer()

                    Group {
                        if viewModel.haveNoBooks {
                            Text(
                                """
                                        Biblioteca vazia!
                                Chique e adicione livros.
                                """)
                                .foregroundColor(.gray)
                                .font(.title)
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

                    }

                    Spacer(minLength: 50)

                    Button {
                        print("++++++++++++++")
                    } label: {
                        Text("Biblioteca")
                            .font(.title2)
                    }
                    .foregroundColor(.white)
                    .tint(.mint)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                }.padding()

            }
            .listStyle(.plain)
            .onAppear {
                self.viewModel.fetchBooks()

            }
        }
    }

}

struct MyBookList_Previews: PreviewProvider {
    static var previews: some View {
        MyBookListView()
    }
}
