//
//  Request.swift
//  MyBooks
//
//  Created by Suh on 08/09/22.
//

import Foundation

enum RequestMethod: String {
    case get = "GET"
    case post = "POST"

}

struct Request {
    var url: String
    var method: RequestMethod
}
