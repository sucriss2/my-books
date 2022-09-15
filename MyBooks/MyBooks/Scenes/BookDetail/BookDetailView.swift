//
//  BookDetail.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.
// swiftlint: disable line_length

import SwiftUI

struct BookDetailView: View {
    @StateObject var viewModel: BookDetailViewModel = BookDetailViewModel()

    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .center) {
                    Text(viewModel.book.title)
                        .foregroundColor(.mint)
                        .font(.largeTitle)
                }
                Spacer()
                    .frame(height: 50)
                Image("book-pages")
                Spacer()
                    .frame(height: 50)

                Divider()
                HStack {
                    VStack(alignment: .center) {
                        Text("AUTOR").font(.caption).bold()
                        Text(viewModel.book.author)
                            .font(.title3)
                            .foregroundColor(.mint)
                    }
                    .padding()

                    Divider()
                    VStack(alignment: .center) {
                        Text("GENRE").font(.caption).bold()
                        Text(viewModel.book.genre)
                            .font(.title3)
                            .foregroundColor(.mint)
                    }
                    .padding()

                    Divider()
                    VStack(alignment: .center) {
                        Text("PAGE").font(.caption).bold()
                        Text(String(viewModel.book.page))
                            .font(.caption2)
                            .foregroundColor(.mint)
                    }
                    .padding()

                }
                .frame(height: 60.0)
                Divider()
                Spacer()
                    .frame(height: 30)
                VStack(alignment: .center, spacing: 10.0) {

                    Text("Descrição do Livro")
                        .font(.title)
                    Text(viewModel.book.description)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                } .padding()

            } .padding()

            Spacer()

            Button {
                print("") // Se vier da minha lista (EXCLUIR LIVRO) else (ADICIONAR)
            } label: {
                Text("Adicionar ")
                    .font(.title)

            }
            .foregroundColor(.black)
            .tint(.mint)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
        }
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
