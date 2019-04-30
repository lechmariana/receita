//
//  receita.swift
//  ReceitaApp
//
//  Created by Carlos Rafael Hasselmann Forbeck on 30/04/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import Foundation

class Receita {
    internal init(nome: String, ingredientes: [String], quantidade: [Int], medida: [String]) {
        self.nome = nome
        self.ingredientes = ingredientes
        self.quantidade = quantidade
        self.medida = medida
    }
    
    var nome: String
    var ingredientes: [String]
    var quantidade: [Int]
    var medida: [String]
    
}
