//
//  Request.swift
//  MyBooks
//
//  Created by Suh on 08/09/22.
//

import Foundation

enum RequestMethod: String {
    case create = "CREATE"
    case read = "READ"
    case update = "UPDATE"
    case delete = "DELETE"
}

struct Request {
    var url: String
    var method: RequestMethod
}
