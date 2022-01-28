//
//  MyPokemonView.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 08/01/2022.
//

import SwiftUI

struct MyPokemonView: View {
    var pokemon: PokemonModel
    
    init(pokemon: PokemonModel){
        self.pokemon = pokemon
    }
    var body: some View {
      
        HStack{
            Image(pokemon.img)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
           
            PokemonStatsView(of: pokemon, isOpponent: false)
        }
        .frame(width: 300, height: 120)
        .background(.white)
        .cornerRadius(30)
        .padding(10)
   
       
        
    }
}
