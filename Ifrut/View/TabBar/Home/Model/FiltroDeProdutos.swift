//
//  FiltroDeProdutos.swift
//  Ifrut
//
//  Created by leonardo Moreira on 18/04/24.
//

import Foundation



enum FiltroDeProdutos: Int, CaseIterable, Identifiable {
    
    case Vegetais
    case Frutas
    case Temperos
    case Saladas
    
    var title: String {
        switch self {
        case.Vegetais: return "Vegetais"
        case.Frutas: return "Frutas"
        case.Temperos: return "Temperos"
        case.Saladas: return "Saladas"
        }
    }
    
    var id: Int { return self.rawValue }
}
