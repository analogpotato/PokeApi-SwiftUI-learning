//
//  PokemonFetcher.swift
//  PokeApi
//
//  Created by Frank Foster on 5/4/20.
//  Copyright © 2020 Frank Foster. All rights reserved.
//

import Foundation


public class PokemonFetcher: ObservableObject {
    @Published var pokemon = [Pokemon]()
    
    init() {
        load()
    }
    func load() {
        let url = URL(string:"https://pokeapi.co/api/v2/pokemon/?limit=807")!
        URLSession.shared.dataTask(with: url) { (data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Pokemon].self, from: d)
                    DispatchQueue.main.async {
                        self.pokemon = decodedLists
                       print(self.pokemon)
                    }
                }else {
                    print("No Data")
                }
                
            } catch {
                print("error")
               
            }
        }.resume()
    }
}
