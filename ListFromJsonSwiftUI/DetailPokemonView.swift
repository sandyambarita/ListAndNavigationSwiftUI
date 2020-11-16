//
//  DetailPokemonView.swift
//  ListFromJsonSwiftUI
//
//  Created by sandy ambarita on 16/11/20.
//

import SwiftUI

struct DetailPokemonView: View {
    var pokemon: PokemonApiListEntry?
    
    var body: some View {
        VStack {
            Form{
                Section {
                    HStack {
                        Text("Pokemon Name")
                        Spacer()
                        Text(pokemon?.name ?? "")
                            .foregroundColor(.gray)
                            .font(.callout)
                    }
                }
                Section {
                    Button(action: {
                        UIApplication.shared.open(URL(string: pokemon!.url)!)
                    }, label: {
                        Text(pokemon?.url ?? "")
                    })
                }
            }
        }
    }
}


struct DetailPokemonView_Preview: PreviewProvider {
    static var previews: some View {
        DetailPokemonView()
    }
}

