//
//  BookDetailViewModel.swift
//  MyBooks
//
//  Created by Suh on 15/09/22.
// swiftlint: disable line_length

import Foundation

class BookDetailViewModel: ObservableObject {
    @Published var book = Book(id: "DDF89927-06D1-4C73-92AE-39D7F866DD27", title: "O início do Feminismo no Brasil", author: "Leolinda Dalto", description: "O início do feminismo no Brasil foi o título atribuído à publicação da ata de fundação da Junta Feminil Pró-Hermes-Wenceslau, coletivo criado em 1909 para apoiar a candidatura de Hermes da Fonseca à Presidência da República. O grupo, liderado por Leolinda de Figueiredo Daltro, pioneira no ativismo político pelos direitos das mulheres, deu origem no ano seguinte a Partido Republicano Feminino, com atuação política voltada para a reivindicação do direito das mulheres ao voto e por maior participação feminina na esfera pública. A obra lança luzes sobre a personalidade de Leolinda, que, embora hoje seja pouco conhecida pela sociedade, em sua época fundou escolas, jornais, um partido e até mesmo a primeira entidade nacional dedicada à proteção dos índios.", page: 67, genre: "História")

}

