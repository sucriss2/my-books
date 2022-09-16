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
        ScrollView {
            VStack(alignment: .center) {
                Text(viewModel.book.title)
                    .foregroundColor(.mint)
                    .font(.title)
            }
            Spacer()
                .frame(height: 50)
            Image("book-pages")
            Spacer()
                .frame(height: 50)
            VStack {
                DetailView(viewModel: viewModel)
            }
            .padding()
        }
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
