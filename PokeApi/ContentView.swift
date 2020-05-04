//
//  ContentView.swift
//  PokeApi
//
//  Created by Frank Foster on 5/4/20.
//  Copyright © 2020 Frank Foster. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var fetcher = PokemonFetcher()
    
    var body: some View {
        VStack{
            List (fetcher.pokemon) { Pokemon in
                VStack(alignment: .leading) {
                    Text(Pokemon.name)
                    Text(Pokemon.id)
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
