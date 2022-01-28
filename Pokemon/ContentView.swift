//
//  ContentView.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 08/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State var nome:String = ""
    @State var historico:[String] = []
    @State var Pokedex2:[Pokemon] = [
        Pokemon(nome: "Pikachu"),
        Pokemon(nome: "Charmander"),
        Pokemon(nome: "Squirtle"),
        Pokemon(nome: "Bulbasaur")
    ]
 
    
    var body: some View {
        
        NavigationView{
         
            VStack{
                
                NavigationLink {
                    //Destino
                    BattleScreen(Pokedex2: self.$Pokedex2,
                                 historico: self.$historico,
                                 myPokemon: PokemonModel(img: "teste", name: "teste"),
                                 opponentPokemon: PokemonModel(img: "teste", name: "teste")
                                 )
                } label: {
                    HStack{
                        Text("BATTLE")
                            .font(Font.title3.weight(.bold))
                    }
                    .frame(width: 200, height: 70, alignment: .center)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding(.top, 140)
                }
                
                NavigationLink {
                    //Destino
                    PokemonsScreen(Pokedex2: self.$Pokedex2)
                } label: {
                    HStack{
                        Text("POKÉMON")
                            .font(Font.title3.weight(.bold))
                    }
                    .frame(width: 200, height: 70, alignment: .center)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(15)
                    .padding(.top, 10)
                    
                }
                if (!historico.isEmpty) {
                    NavigationLink {
                        //Destino
                        HistoryScreen(historico: self.$historico)
                        
                    } label: {
                        HStack{
                            Text("HISTORY")
                                .font(Font.title3.weight(.bold))
                        }
                        .frame(width: 200, height: 70, alignment: .center)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top, 10)
                        
                    }
                }
            }
            .background(
                Image("homescreen")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
            
        }
        .accentColor(.black)
    }
}





