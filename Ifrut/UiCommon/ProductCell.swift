//
//  ProductCell.swift
//  Ifrut
//
//  Created by leonardo Moreira on 15/04/24.
//

import SwiftUI

struct ProductCell: View {
    
    let  product: Produtos
    @State private var selectedCoracao = false
    let valor: Double = 12.99
    
    var body: some View {
        
        VStack{
            Button(action: {
                selectedCoracao.toggle()
            }, label: {
                Image(systemName: "heart")
                    .frame(width: 20, height: 20, alignment: .trailing)
                    .foregroundStyle(selectedCoracao ? .red : .black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
            })
          
            
            
            Spacer()
            
            Image(product.imagem)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 70)
            
            Text(product.nome)
                .font(.subheadline)
                .bold()
                .padding(.top, 4)
            
            HStack{
                Text(product.minutos)
                    .font(.footnote)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.yellow)
                
               
                
                Text("\(product.stars)")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            
          
            HStack {
                Text((formatarDecimal(valor, casaDecimal: 2)))
                    .bold()
                    .padding(.leading)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus")
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                        .background(Color.verde)
                        .cornerRadius(40)
                        .padding(.trailing, 20)
                
                })
            }
                
                
            
        }
        .padding()
        .frame(width: 202, height: 227)
      
                
        }
    }
func formatarDecimal(_ valor: Double, casaDecimal: Int) -> String {
    return String(format: "%.\(casaDecimal)f", valor)
}

#Preview {
    ProductCell(product: Produtos(id: 1, nome: "Tomate", minutos: "20min", imagem: "tomate", stars: 4.5, preco: 12.00))
    
        
}
