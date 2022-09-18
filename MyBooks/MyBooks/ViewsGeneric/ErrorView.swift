//
//  LibraryErrorView.swift
//  MyBooks
//
//  Created by Suh on 18/09/22.
//

import SwiftUI

struct ErrorView: View {
    let message: String
    let buttonTitle: String
    let onTouckButton: () -> Void

    var body: some View {
        VStack {

            Spacer()

            Image(systemName: "x.circle")
            Text(message)

            Spacer()
                .frame(height: 20)

            Button(buttonTitle) {
                self.onTouckButton()
            }

            Spacer()
        }
    }
}

struct LibraryErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(
            message: "Mensagem",
            buttonTitle: "Botao"
        ) {}
    }
}
