//
//  BookDetail.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.

import SwiftUI

struct BookDetailView: View {
    @StateObject var viewModel: BookDetailViewModel = BookDetailViewModel()

    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .center) {
                    Text(viewModel.bookTitle)
                        .foregroundColor(.mint)
                        .font(.title)

                    Spacer()
                        .frame(height: 50)
                    Image("book-pages")
                    Spacer()
                        .frame(height: 50)

                    DetailView(
                        author: viewModel.bookAuthor,
                        genre: viewModel.bookGenre,
                        page: viewModel.bookPage,
                        description: viewModel.bookDescription
                    )

                }
                .padding()
            }

            Button {
                print("") // Se vier da minha lista (EXCLUIR LIVRO) else (ADICIONAR)
            } label: {
                Text("Adicionar ")
                    .font(.title2)
            }
            .foregroundColor(.black)
            .tint(.mint)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .padding(.init(top: 8, leading: 0, bottom: 0, trailing: 0))

        }
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
