//
//  PokemonClass.swift
//  PokeApi
//
//  Created by Frank Foster on 5/4/20.
//  Copyright © 2020 Frank Foster. All rights reserved.
//

import Foundation


struct Pokemon: Decodable, Identifiable {
    public var id: String
    public var name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
       
    }

}

