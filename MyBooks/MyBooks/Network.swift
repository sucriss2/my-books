//
//  Network.swift
//  MyBooks
//
//  Created by Suh on 08/09/22.
//

import Foundation

class Network {
    private let session: URLSession
    static private var instance: Network?
    let url = "https://gist.githubusercontent.com/sucriss2/be9a24cfddc5de9f618bb2f078123a49/raw/c7ac33dc765b18515b822d59177d3a0f09ccff67/books.json"

    static var shared: Network {
        if instance == nil {
            instance = Network()
        }
        return instance!
    }

    private init() {
        session = URLSession.shared
    }

    func requestData(
            using request: Request,
            onComplete: @escaping (Result<Data, Error>) -> Void
        ) {
            guard let url = URL(string: url) else { return }
            print(url.absoluteString)
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = request.method.rawValue

            let datatask = session.dataTask(with: urlRequest) { data, response, error in
                if let error = error {
                    print(error.localizedDescription)
                    onComplete(.failure(error))
                    return
                }

                guard let response = response as? HTTPURLResponse else {
                    let error = NSError(domain: "Response fail", code: 499, userInfo: nil)
                    onComplete(.failure(error))
                    return
                }

                guard response.statusCode >= 200 && response.statusCode < 300 else {
                    let error = NSError(domain: "Unexpected fail", code: response.statusCode, userInfo: nil)
                    onComplete(.failure(error))
                    return
                }

                guard let data = data else {
                    let error = NSError(domain: "No Data", code: 499, userInfo: nil)
                    onComplete(.failure(error))
                    return
                }

                onComplete(.success(data))

            }
            datatask.resume()
        }

        func request<T: Decodable>(
            request: Request,
            returning type: T.Type,
            onComplete: @escaping (Result<T?, Error>) -> Void
        ) {
            requestData(using: request) { result in
                switch result {
                case .failure(let error):
                    onComplete(.failure(error))
                case .success(let data):
                    do {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        let object = try decoder.decode(type, from: data)
                        onComplete(.success(object))
                    } catch {
                        onComplete(.failure(error))
                    }
                }
            }
        }

}
