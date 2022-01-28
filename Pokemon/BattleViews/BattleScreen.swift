//
//  BattleScreen.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 08/01/2022.
//

import SwiftUI

struct BattleScreen: View{
    @Binding var Pokedex2:[Pokemon]
    @Binding var historico:[String]
    @State var value = "" //myPokemon
    @State var value2 = "" //opponent
    @State var esconde = ""
    @State var text = "Battle!"
    @State var tipo = "Normal"
    @State var randomText = ["tackled hard!!", "kicked!!!", "super punched!", "...ouch!", "! This is gonna be though!", "hit!!", "! That must hurt!"]
    @State var myPokemon: PokemonModel
    @State var opponentPokemon: PokemonModel
    @State private var attackDisabled = false
    @State private var showingAlert = false
    @State private var showingAlert2 = false
 
    
    var body: some View {

        VStack{
            if (esconde.isEmpty) {
                VStack {
                    Spacer()
                    HStack{
                        Image(value.isEmpty ? "question" : value)
                            .scaledToFit()
                    }
                    .padding(20)
                    .background(.white)
                    .cornerRadius(100)
                 
                    Spacer()
                }
            }
          
             
         
         
           
            HStack {
                if (value.isEmpty || value2.isEmpty) {
                    Menu {
                        ForEach(Pokedex2){ pokemon in
                            Button(pokemon.nome) {
                                self.value = pokemon.nome
                                self.myPokemon = PokemonModel(img: value,name: value)
                                self.tipo = pokemon.type
                            }
                        }
                    } label: {
                        HStack{
                            Text(value.isEmpty ? "Player 1" : value)
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(.black)
                                .font(Font.system(size: 20, weight: .bold))
                               
                        }
                        .padding(30)
                        .background(.white)
                        .cornerRadius(15)
                        .frame(width: 250)
                    }
                }
            }

            HStack {
                if (value.isEmpty || value2.isEmpty) {
                    Menu {
                        ForEach(Pokedex2){ pokemon in
                            Button(pokemon.nome) {
                                self.value2 = pokemon.nome
                                self.opponentPokemon = PokemonModel(img: value2,name: value2)

                            }
                        }
                    } label: {
                        HStack{
                            Text(value2.isEmpty ? "Player 2" : value2)
                                .foregroundColor(.black)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(.black)
                                .font(Font.system(size: 20, weight: .bold))
                               
                        }
                        .padding(30)
                        .background(.white)
                        .cornerRadius(15)
                        .frame(width: 250)
                    }
                
                }
            }
            
            if (!value.isEmpty && !value2.isEmpty && esconde != "hide") {
                HStack {
                    Button {
                        self.esconde = "hide"
                    } label: {
                        Text("FIGHT!")
                        .font(Font.title3.weight(.bold))
                    }
                }
                .frame(width: 400, height: 80)
                .background(Color.red)
                .foregroundColor(.white)
            }
            
            if (esconde.isEmpty) {
                VStack {
                    Spacer()
                    HStack {
                       
                            Image(value2.isEmpty ? "question" : value2)
                                .scaledToFit()
                        
                    }
                    .padding(20)
                    .background(.white)
                    .cornerRadius(100)
                    Spacer()
                }
            }
            
        
  

            //BATTLE
            if (!esconde.isEmpty) {
          
                  HStack {
                      MyPokemonView(pokemon: myPokemon)
            
                  }
                
                HStack{
                    Text(self.text)
                        .font(Font.title3.weight(.bold))
                }
                .frame(width: 300, height: 150)
                .background(.white)
                .cornerRadius(30)
                  HStack {
                      OpponentPokemonView(pokemon: opponentPokemon)
                  }
             
                  HStack {
                    Button {
                        self.text = "\(self.value2) \(self.randomText[Int.random(in: 0...6)])"
                        opponentPokemon.attacked()
                        attackDisabled = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                            if opponentPokemon.hpStatus.pokemonIsDefeated() {
                                
                                //Historico
                                self.historico.append("Winner: \(value), Loser: \(value2)")
                               
                                self.text = "\(self.value2) won!!"
                                for i in 0...(Pokedex2.count - 1) {
                                  
                                    if (Pokedex2[i].nome == value2) {
                                        Pokedex2[i].xp += 20
                                        
                                        if (Pokedex2[i].xp >= Pokedex2[i].xpLevelUp) {
                                            Pokedex2[i].nivel += 1
                                            Pokedex2[i].xpLevelUp *= 2
                                        }
                                        
                                        
                                    }
                                }
                               
                                return
                            }
                            myPokemon.attacked()
                            self.text = "\(self.value) \(self.randomText[Int.random(in: 0...6)])"
                            if myPokemon.hpStatus.pokemonIsDefeated() {
                                self.text = "\(self.value) won!!"
                                
                                for i in 0...(Pokedex2.count - 1) {
                                    
                                    if (Pokedex2[i].nome == value) {
                                        Pokedex2[i].xp += 20
                                        
                                        if (Pokedex2[i].xp >= Pokedex2[i].xpLevelUp) {
                                            Pokedex2[i].nivel += 1
                                            Pokedex2[i].xpLevelUp *= 2
                                        }
                                    }
                                }
                                
                                
                                return
                            }
                            attackDisabled = false
                        }
                       
                    } label: {
                        Text("Tackle")
                    }
                    .frame(width: 150, height: 60, alignment: .center)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .disabled(attackDisabled)
                    .font(Font.title3.weight(.bold))
                  
               
                      
                    NavigationLink {
                        PokemonsScreen(Pokedex2: self.$Pokedex2)
                    } label: {
                        HStack{
                            Text("Run!")
                                .font(Font.title3.weight(.bold))
                        }
                        .frame(width: 150, height: 60, alignment: .center)
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(15)
                    }

                }
                
                  
            }
        }
        .background(
            Image("basic")
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )

    }
        

}
