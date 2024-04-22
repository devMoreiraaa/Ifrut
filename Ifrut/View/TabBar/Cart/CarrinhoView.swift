//
//  CarrinhoView.swift
//  Ifrut
//
//  Created by leonardo Moreira on 15/04/24.
//

import SwiftUI

struct CarrinhoView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack(spacing: 20){
                Image(.alface)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 40)
                
                Text("Green propolis Ampule  mask")
                    .bold()
                    .font(.footnote)
                
                Image(systemName: "xmark")
                    .foregroundStyle(.gray)
                
            }
            HStack() {
                Text("R$50.00 USD")
                    .font(.title2)
                .bold()
                .padding(.leading)
                
                
                Text("-")
                    .padding(.leading, 30)
                
                Text("1")
                
                Text("+")
            }
          
            .padding(.leading)
        }
    }
}

#Preview {
    CarrinhoView()
}
