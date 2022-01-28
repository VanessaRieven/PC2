//
//  PokemonStatsView.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 08/01/2022.
//

import SwiftUI

struct PokemonStatsView: View {
    private let pokemon: PokemonModel
    private let isOpponent: Bool
    init(of pokemon: PokemonModel, isOpponent: Bool) {
        self.pokemon = pokemon
        self.isOpponent = isOpponent
    }
    
    var body: some View {
        VStack(alignment: isOpponent ? .leading : .trailing, spacing: 5) {
            Text(pokemon.name)
                .font(Font.title3.weight(.bold))
                .foregroundColor(.black)
            Text("HP: \(Int(pokemon.hpStatus.hpLevel))/150")
                .font(Font.footnote.weight(.bold))
                .foregroundColor(.black)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 150, height: 5)
                    .foregroundColor(.black.opacity(0.1))
                    .background()
                Rectangle()
                    .frame(width: pokemon.hpStatus.hpLevel, height: 5)
                    .foregroundColor(pokemon.hpStatus.hpColor)
                    .animation(Animation.easeOut(duration: 1.0), value: pokemon.hpStatus.hpLevel)
            }
            
            
        }
        .padding(10)
       
    }
}



