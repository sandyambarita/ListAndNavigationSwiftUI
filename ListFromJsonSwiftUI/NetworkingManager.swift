//
//  NetworkingManager.swift
//  ListFromJsonSwiftUI
//
//  Created by sandy ambarita on 16/11/20.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager: ObservableObject {
    @Published var pokemonList: PokemonApiList?
    
    init() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151") else { return }
        URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in
            
            print("urlResponse\(urlResponse)")
            
            do {
                guard let data = data else { return }
                let pokemonList = try JSONDecoder().decode(PokemonApiList.self, from: data)
                DispatchQueue.main.async {
                    self.pokemonList = pokemonList
                }
            } catch {
                print("error = \(error)")
            }
        }.resume()
    }
}
