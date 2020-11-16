//
//  PokemonApiList.swift
//  ListFromJsonSwiftUI
//
//  Created by sandy ambarita on 16/11/20.
//

import Foundation

struct PokemonApiList: Codable {
    var results: [PokemonApiListEntry]
}

struct PokemonApiListEntry: Codable, Identifiable, Hashable {
    var id = UUID()
    var name: String
    var url: String
    
    enum CodingKeys: String, CodingKey {
            case name
            case url
        }
}
