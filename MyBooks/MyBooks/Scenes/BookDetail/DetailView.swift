//
//  Detail.swift
//  MyBooks
//
//  Created by Suh on 15/09/22.
//

import SwiftUI

struct DetailView: View {
    let author: String
    let genre: String
    let page: String
    let description: String

    var body: some View {
        VStack {
            Divider()
            HStack {
                VStack(alignment: .center) {
                    Text("AUTOR").font(.caption).bold()
                    Text(author)
                        .font(.title3)
                        .foregroundColor(.mint)
                }
                .padding()

                Divider()
                VStack(alignment: .center) {
                    Text("GENRE").font(.caption).bold()
                    Text(genre)
                        .font(.title3)
                        .foregroundColor(.mint)
                }
                .padding()

                Divider()
                VStack(alignment: .center) {
                    Text("PAGE").font(.caption).bold()
                    Text(page)
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
                Text(description)
                    .font(.title3)
                    .multilineTextAlignment(.center)
            }
        }
    }

}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            author: "Susuuuuuu",
            genre: "ficção",
            page: "33",
            description: "bla bla bla"
        )
    }
}
