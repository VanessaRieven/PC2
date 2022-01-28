//
//  BattleScreen.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 08/01/2022.
//
import SwiftUI

struct PokemonsScreen: View {
    @Binding var Pokedex2:[Pokemon]
//    @State private var pokedex1: Array<String>  =
//        ["Pikachu", "Thunder", "Charmander", "Fire"]
    
    @State private var pokedex123:[String] = ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu", "Raichu", "Sandshrew", "Sandslash", "Nidoran", "Nidorina", "Nidoqueen", "Nidorino", "Nidoking", "Clefairy", "Vulpix", "Ninetales", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Viluplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfecth'd", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Clyster", "Gastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey", "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Mr.Mime", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres", "Dratini", "Dragonair", "Dragonite", "Mewtwo", "Mew"]
    
    
    var body: some View {
        
       
        VStack {
            HStack {
                Text("CREATE NEW POKÉMON")
                .font(Font.title3.weight(.bold))
                .foregroundColor(.white)
                
               
               
                Menu {
                    ForEach(self.pokedex123.sorted(), id: \.self){ pok in
                        
                        Button(pok) {
                            Pokedex2.append(Pokemon(nome: pok))
                        }
                    }
                }
                label: {
                    HStack{
                        Text("+")
                            .font(Font.title2.weight(.bold))
                            .foregroundColor(.black)
//                        Image(systemName: "chevron.down")
//                            .foregroundColor(.gray)
//                            .font(Font.system(size: 20, weight: .bold))
                    }
                    .frame(width: 50, height: 50, alignment: .center)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(30)
               
                }//end menu
                
            }
      
            
              
            VStack {
                List{
                    ForEach(Pokedex2){ pokemon in
                        NavigationLink {
                            //Destino
                            detailsPokemon(pokemon: pokemon)
                        } label: {
                           
                            StatusPokemon(pokemon: pokemon)
                        }
                       
                    }
                    
                    .onDelete { (indexSet) in
                        Pokedex2.remove(atOffsets: indexSet)
                    }
                }
            }
        }.background(
            Image("basic")
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
     
    }
    
    private func deleteItem(at indexSet: IndexSet) {
      self.Pokedex2.remove(atOffsets: indexSet)
    }
      
 
}

