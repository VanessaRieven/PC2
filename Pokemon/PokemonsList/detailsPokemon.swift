//
//  detailsPokemon.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 26/01/2022.
//

import SwiftUI

struct detailsPokemon: View {
    
    @State var pokemon:Pokemon
    @State var nick:String = ""
    @State var changeNick:Bool = false
    
    var body: some View {
        
        VStack {
            Image(pokemon.img)
            VStack {
                HStack {
                    Spacer()
                    Text(pokemon.nome)
                        .foregroundColor(.black)
                        .font(Font.title3.weight(.bold))
                    Spacer()
                }
                .padding(.bottom, 30)
                VStack(alignment: .leading, spacing: 10){
                    HStack {
                        VStack(alignment: .leading, spacing: 10)  {
                            Text("Nickname")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .bold))
                            
                            Text("Strong vs")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .bold))
                            Text("Weak vs")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .bold))
                            Text("HP")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .bold))
                            Text("XP")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .bold))
                            Text("Type")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .bold))
                        }
                        .padding(20)
                        VStack(alignment: .leading, spacing: 10)  {
                            HStack {
                                if (!changeNick) {
                                    Text(pokemon.nickname)
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .bold))
                                    Button {
                                       changeNick = true
                                      
                                    } label: {
                                        Image(systemName: "pencil")
                                    }
                                } else {
                                    TextField("Change nickname?", text: $nick)
                                        .font(.system(size: 14, weight: .bold))
                                    Button {
                                        changeNick = false
                                        pokemon.nickname = self.nick
                                    } label: {
                                        Text("Submit")
                                            .font(.system(size: 14, weight: .bold))
                                    }
                                    .padding(5)
                                    .background(.red)
                                    .foregroundColor(.white)
                                   
                                    .cornerRadius(10)
                                }
                            
                              
                                
                            }
                        
                            Text(pokemon.strong)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .bold))
                            Text(pokemon.weak)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .bold))
                            ProgressView(value: Float(pokemon.hpleft), total: Float(pokemon.hp)) {
                                  
                           }
                            .progressViewStyle(.linear)
                            .frame(width: 100, height: 15)
                            ProgressView(value: Float(pokemon.xp), total: Float(pokemon.xpLevelUp)) {
                                  
                           }
                            .progressViewStyle(.linear)
                            .frame(width: 100, height: 15)
                            Text(pokemon.type)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .bold))
                            
                        }
                        .padding(20)
                      
                    }
                 
                  
                }
                .padding(20)
              
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
            .padding(20)
            .background(.white)
            .foregroundColor(.black)
            .cornerRadius(10)
       
        }
        .background(
            Image("basic")
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
        
    }
}
