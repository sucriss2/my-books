//
//  BookDetail.swift
//  MyBooks
//
//  Created by Suh on 14/09/22.
// swiftlint: disable line_length

import SwiftUI

struct BookDetail: View {
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .center) {
                    Text("Detalhes")
                        .foregroundColor(.mint)
                        .font(.largeTitle)
                }
                Spacer()
                    .frame(height: 50)
                Image("book-pages")
                Spacer()
                    .frame(height: 50)

                Divider()
                HStack {
                    VStack(alignment: .center) {
                        Text("AUTOR")
                            .font(.title2)
                        Text("Suelen Vaz")
                            .font(.title)
                            .foregroundColor(.mint)
                    }

                    Divider()
                    VStack(alignment: .center) {
                        Text("GENRE")
                            .font(.title2)
                        Text("Biografia")
                            .font(.title)
                            .foregroundColor(.mint)
                    }
                    Divider()
                    VStack(alignment: .center) {
                        Text("PAGE")
                            .font(.title2)
                        Text("500")
                            .font(.title)
                            .foregroundColor(.mint)
                    }
                    .padding()

                }
                .frame(height: 60.0)
                Divider()
                Spacer()
                    .frame(height: 30)
                VStack(alignment: .center, spacing: 10.0) {

                    Text("Descrição do Livro")
                        .font(.title)
                    Text("Lorem ipsum dolor sit amet. Ea magni magni sed cupiditate distinctio et natus amet 33 commodi dolor. Id unde illum vel vitae itaque id ipsum doloremque sit dolorem voluptatum ut facilis officia eum accusamus maiores. Vel quibusdam dolores qui eaque itaque in rerum recusandae. Ut Quis quaerat non cumque porro vel magni inventore et assumenda aspernatur. Est temporibus sint non quos error et eius perspiciatis aut nisi natus aut quidem molestiae sit odit dolores 33 commodi velit. Aut dolores assumenda eum excepturi voluptates sed excepturi consectetur non fuga doloribus id quaerat perspiciatis ut quam modi. Ut dolorem inventore eos eaque nihil eum omnis cupiditate aut officiis libero ea voluptatibus autem qui saepe esse?")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                } .padding()

            } .padding()

            Spacer()

            Button {
                print("") // Se vier da minha lista (EXCLUIR LIVRO) else (ADICIONAR)
            } label: {
                Text("Adicionar ")
                    .font(.title)

            }
            .foregroundColor(.black)
            .tint(.mint)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
        }
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail()
    }
}
