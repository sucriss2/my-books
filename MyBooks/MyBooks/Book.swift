//
//  Book.swift
//  MyBooks
//
//  Created by Suh on 08/09/22.
//

import Foundation

struct Book: Decodable {
    let codeID: String
    let title: String
    let author: String
    let description: String
    let page: Int
    let genre: String

    enum CodingKeys: String, CodingKey {
        case title, author, description, page, genre
        case codeID = "id"
    }

}
