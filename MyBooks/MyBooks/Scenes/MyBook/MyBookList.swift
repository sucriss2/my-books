//
//  MyBookList.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.

import SwiftUI

struct MyBookList: View {
    @StateObject var viewModel: MyBookViewModel = MyBookViewModel()
    @State private var showBookDetail = false

    var body: some View {
        VStack {
            NavigationView {
                List(viewModel.books, id: \.id) { book in
                    MyBookRow(book: book)
                }
                .navigationTitle("Minha Lista")

            }.listStyle(.plain)
            .onAppear {
                self.viewModel.fetchBooks()
            }

            Button {
                print("++++++++++++++")
            } label: {
                Text("Biblioteca")
                    .font(.title)
            }
            .foregroundColor(.white)
            .tint(.mint)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)

            // NavigationLink("", destination: BookDetail(), isActive: $showBookDetail)

            Spacer()
        }
    }

}

struct MyBookList_Previews: PreviewProvider {
    static var previews: some View {
        MyBookList()
    }
}
