//
//  Detail.swift
//  MyBooks
//
//  Created by Suh on 15/09/22.
//

import SwiftUI

struct DetailView: View {
    @StateObject var viewModel: BookDetailViewModel = BookDetailViewModel()

    var body: some View {
        VStack {
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
                        .font(.title3)
                        .foregroundColor(.mint)
                }
                .padding()
            }
            .frame(height: 60.0)

            Divider()
            Spacer()
                .frame(height: 10)
            VStack(alignment: .center, spacing: 10.0) {

                Text("Descrição do Livro")
                    .font(.title2)
                Text(viewModel.book.description)
                    .font(.title3)
                    .multilineTextAlignment(.center)
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

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: BookDetailViewModel())
    }
}
