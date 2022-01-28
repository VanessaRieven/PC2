//
//  StatusPokemon.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 08/01/2022.
//

import SwiftUI

struct StatusPokemon: View {
    @State var pokemon:Pokemon
    var body: some View {
        VStack{
          
            
            HStack{
                
                Group{
                    Image(pokemon.img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 120)
                        .padding(.leading, 5)
                    VStack(alignment: .leading){
                        Group{
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(pokemon.nome)
                                        .foregroundColor(.black)
                                        .font(Font.title3.weight(.bold))
                                    if(!pokemon.nickname.isEmpty) {
                                        Text(pokemon.nickname)
                                            .foregroundColor(.black)
                                            .font(Font.footnote)
                                    }
                                  
                                }
                            
                                Spacer()
                                Text("Lvl.\(pokemon.nivel)")
                                    .foregroundColor(.black)
                                    .font(Font.title3.weight(.bold))
                                
                            }
                            HStack{
                                ProgressView(value: Float(pokemon.xp), total: Float(pokemon.xpLevelUp))
                                    {
                                       Text("Next Lvl. \(self.pokemon.xp)/\(self.pokemon.xpLevelUp)")
                                            .font(.footnote)
                                   }
                                    .progressViewStyle(.linear)
                                    .frame(width: 100)
                                Spacer()
                                Text("\(self.pokemon.type)")
                                    .foregroundColor(.white)
                                    .font(Font.footnote.weight(.bold))
                                    .padding(10)
                                    .background(Color(self.pokemon.color))
                                    .cornerRadius(10)
                                }
                                .foregroundColor(.black)
                                .font(Font.title3.weight(.bold))
                            
                            }
                     
                            HStack {
                                Spacer()
                                Text("HP: \(self.pokemon.hp)")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 11, weight: .bold))
                                    .padding(5)


                                Text("Def: \(self.pokemon.defense)")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 11, weight: .bold))
                                    .padding(5)


                                Text("Atk:\(self.pokemon.power)")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 11, weight: .bold))
                                    .padding(5)
                                Spacer()


                            }.background( Color(red: 245.0/255, green: 245.0/255, blue: 245.0/255))
                           
                         
                  
                    }
                }
            }//HStack
        
        
           
        }
        

    }
   
}
