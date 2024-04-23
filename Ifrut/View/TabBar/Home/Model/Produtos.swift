//
//  Produtos.swift
//  Ifrut
//
//  Created by leonardo Moreira on 16/04/24.
//

import Foundation

struct Produtos:  Identifiable {
  
    var id: Int
    let nome: String
    let minutos: String
    let imagem: String
    let stars: Double
    let preco: Double
}

let produto: [Produtos] = [

    Produtos(id: 0, nome: "Tomate", minutos: "20min", imagem: "tomate" , stars: 4.5, preco: 12.00),
    Produtos(id: 1, nome: "Alface", minutos: "30min", imagem: "alface" , stars: 5.0, preco: 9.00),
    Produtos(id: 2, nome: "Banana", minutos: "10min", imagem: "banana" , stars: 4.9, preco: 5.99),
    Produtos(id: 3, nome: "Brócolis", minutos: "30min", imagem: "brocolis" , stars: 4.5, preco: 7.99),
    Produtos(id: 4, nome: "Pepino", minutos: "40min", imagem: "pepino" , stars: 4.8, preco: 2.99),
    Produtos(id: 5, nome: "Limão", minutos: "20min", imagem: "limao" , stars: 4.8, preco: 10.99),

]
