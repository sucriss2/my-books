//
//  MyBooksApp.swift
//  MyBooks
//
//  Created by Suh on 08/09/22.
//

import SwiftUI

@main
struct MyBooksApp: App {

    let booksManager = BooksManager()

    var body: some Scene {
        WindowGroup {
            MyBookListView(viewModel: MyBookListViewModel(booksManager: booksManager))
        }
    }
}
