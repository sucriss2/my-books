//
//  MyBookRow.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.
//

import SwiftUI

struct MyBookRow: View {
    var book: Book

    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
            Text("Autor:  \(book.author)")
        }
    }
}

struct MyBookRow_Previews: PreviewProvider {
    static var previews: some View {
        MyBookRow(book: .fixture())
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
