//
//  Service.swift
//  MyBooks
//
//  Created by Suh on 08/09/22.
// swiftlint: disable line_length

import Foundation

class LibraryService {
    private let network: Network
    let url = "https://gist.githubusercontent.com/sucriss2/be9a24cfddc5de9f618bb2f078123a49/raw/57af89ec3d04c53d90398a1a9b4ce69d87da454a/books.json"

    init(network: Network = Network.shared) {
        self.network = network
    }

    func fetchBooks(
        onComplete: @escaping (Library) -> Void,
        onError: @escaping (Error) -> Void
    ) {

        let request = Request(url: url, method: .get)

        network.request(request: request, returning: Library.self) { result in
            switch result {
            case .failure(let error):
                onError(error)
            case .success(let library):
                onComplete(library ?? Library(books: []))
            }
        }
    }

}
