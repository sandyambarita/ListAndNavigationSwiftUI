//
//  ContentView.swift
//  ListFromJsonSwiftUI
//
//  Created by sandy ambarita on 16/11/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {
        NavigationView {
            List(networkingManager.pokemonList?.results ?? []) { pokemon in
                NavigationLink(
                    destination: DetailPokemonView(pokemon: pokemon)) {
                        PokemonRow(pokemon: pokemon)
                    }
            }
            .navigationTitle("Pokemon")
        }
    }
}

struct PokemonRow: View {
    let pokemon: PokemonApiListEntry
    var body: some View {
        VStack(alignment: .leading) {
            Text(pokemon.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
