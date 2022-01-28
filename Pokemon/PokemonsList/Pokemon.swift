//
//  PokemonStats.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 08/01/2022.
//

import Foundation
import UIKit

class Pokemon: Identifiable{
    
    var id = UUID()
    var nome:String
    var nivel = 1
    var type:String
    var img:String
    var hp = 150
    var hpleft = 20
    var power = 20
    var defense = 20
    var strong:String
    var weak:String
    var xp = 0
    var xpLevelUp = 20
    var color:UIColor
    var nickname:String
    
    init(nome:String){
        self.nome = nome
        self.img = nome
        self.type = "Normal"
        self.strong = "Ghost"
        self.weak = "Fighting"
        self.nickname = ""
        self.color = UIColor(red: 96.0/255, green: 96.0/255, blue: 96.0/255, alpha: 1.0)
        
        //Normal: Pidgey, Pidgeotto, Pidgeot, Rattata, Raticate, Spearrow, Fearow, Jigglypuff, Wigglytuff, Meowth, Persian, Farfetch'd, Doduo, Dodrio, Lickitung, Chansey, Kangaskhan, Tauros, Ditto, Eevee, Porygon, Snorlax
        
        
        //Bug
        if(self.nome == "Caterpie" || self.nome == "Metapod" || self.nome == "Paras" || self.nome == "Parasect" || self.nome == "Butterfree" || self.nome == "Weedle" || self.nome == "Kakuna" || self.nome == "Beedrill" || self.nome == "Venonat" || self.nome == "Venomoth" || self.nome == "Scyther" || self.nome == "Pinsir") {
            self.type = "Bug"
            self.strong = "Grass"
            self.weak = "Fire"
            self.color = UIColor(red: 102.0/255, green: 204.0/255, blue: 0.0/255, alpha: 1.0)
        }
        
        //Grass
        if(self.nome == "Bulbasaur" || self.nome == "Ivysaur" || self.nome == "Venusaur" || self.nome == "Oddish" || self.nome == "Gloom" || self.nome == "Vileplume" || self.nome == "Bellsprout" || self.nome == "Weepinbell" || self.nome == "Victreebel" || self.nome == "Exeggcute" || self.nome == "Exeggutor" || self.nome == "Tangela" ) {
            self.type = "Grass"
            self.strong = "Water"
            self.weak = "Fire"
            self.color = UIColor(red: 102.0/255, green: 204.0/255, blue: 0.0/255, alpha: 1.0)

        }
        
        //Fire
        if(self.nome == "Charmander" || self.nome == "Charmeleon" || self.nome == "Vulpix" || self.nome == "Ninetales" || self.nome == "Growlithe" || self.nome == "Arcanine" || self.nome == "Ponyta" || self.nome == "Rapidash" || self.nome == "Magmar" || self.nome == "Flareon" || self.nome == "Moltres") {
            self.type = "Fire"
            self.strong = "Ice"
            self.weak = "Water"
            self.color = UIColor(red: 204.0/255, green: 0.0/255, blue: 0.0/255, alpha: 1.0)

        }
        
        //Water
        if(self.nome == "Squirtle" || self.nome == "Wartortle" || self.nome == "Blastoise" || self.nome == "Psyduck" || self.nome == "Golduck" || self.nome == "Poliwag" || self.nome == "Poliwhirl" || self.nome == "Pliwrath" || self.nome == "Tentacool" || self.nome == "Tentacruel" || self.nome == "Slowpoke" || self.nome == "Slowbro" || self.nome == "Seel" || self.nome == "Dewgong" || self.nome == "Shellder" || self.nome == "Cloyster" || self.nome == "Krabby" || self.nome == "Kingler" || self.nome == "Horsea" || self.nome == "Seadra" || self.nome == "Goldeen" || self.nome == "Seaking" || self.nome == "Staryu" || self.nome == "Starmie" || self.nome == "Magikarp" || self.nome == "Gyarados" || self.nome == "Lapras" || self.nome == "Vaporeon") {
            self.type = "Water"
            self.strong = "Fire"
            self.weak = "Electric"
            self.color = UIColor(red: 129.0/255, green: 202.0/255, blue: 202.0/255, alpha: 1.0)

        }
        
        //Electric
        if(self.nome == "Pikachu" || self.nome == "Raichu" || self.nome == "Magnemite" || self.nome == "Magneton" || self.nome == "Voltorb" || self.nome == "Electrode" || self.nome == "Electabuzz" || self.nome == "Jolteon" || self.nome == "Zapdos") {
            self.type = "Electric"
            self.strong = "Water"
            self.weak = "Ground"
            self.color = .systemYellow

        }
        
        //Ice
        if(self.nome == "Jynx" || self.nome == "Articuno") {
            self.type = "Ice"
            self.strong = "Grass"
            self.weak = "Fire"
            self.color = UIColor(red: 129.0/255, green: 202.0/255, blue: 202.0/255, alpha: 1.0)

        }
        
        //Fighting
        if(self.nome == "Machop" || self.nome == "Machoke" || self.nome == "Machamp" || self.nome == "Hitmonlee" || self.nome == "Hitmonchan" || self.nome == "Mankey" || self.nome == "Primeape") {
            self.type = "Fighting"
            self.strong = "Bug"
            self.weak = "Flying"
            self.color = .systemIndigo

        }
        
        //Poison
        if(self.nome == "Ekans" || self.nome == "Arbok" || self.nome == "Nidoran" || self.nome == "Nidorina" || self.nome == "Nidoqueen" || self.nome == "Nidorino" || self.nome == "Nidoking" || self.nome == "Zubat" || self.nome == "Golbat" || self.nome == "Grimer" || self.nome == "Muk" || self.nome == "Koffing" || self.nome == "Weezing") {
            self.type = "Poison"
            self.strong = "Grass"
            self.weak = "Ground"
            self.color = .systemPurple

        }
        
        //Ground
        if(self.nome == "Sandshrew" || self.nome == "Sandslash" || self.nome == "Diglett" || self.nome == "Dugtrio" || self.nome == "Cubone" || self.nome == "Marowak" || self.nome == "Rhyhorn" || self.nome == "Rhydon") {
            self.type = "Ground"
            self.strong = "Poison"
            self.weak = "Water"
            self.color = .systemBrown

        }
        

        
        //Psychic
        if(self.nome == "Abra" || self.nome == "Kadabra" || self.nome == "Alakazam" || self.nome == "Drowzee" || self.nome == "Hypno" || self.nome == "Mr.Mime" || self.nome == "Mewtwo" || self.nome == "Mew") {
            self.type = "Psychic"
            self.strong = "Fighting"
            self.weak = "Bug"
            self.color = UIColor(red: 255.0/255, green: 102.0/255, blue: 178.0/255, alpha: 1.0)

        }
        
        //Rock
        if(self.nome == "Geodude" || self.nome == "Graveler" || self.nome == "Golem" || self.nome == "Onix" || self.nome == "Omanyte" || self.nome == "Beedrill" || self.nome == "Omastar" || self.nome == "Kabuto" || self.nome == "Kabutops" || self.nome == "Aerodactyl") {
            self.type = "Rock"
            self.strong = "Normal"
            self.weak = "Water"
            self.color = .systemBrown

        }
        
        //Ghost
        if(self.nome == "Gastly" || self.nome == "Haunter" || self.nome == "Gengar") {
            self.type = "Ghost"
            self.strong = "Poison"
            self.weak = "Dark"
            self.color = .systemPurple

        }
        
        //Dragon
        if(self.nome == "Dratini" || self.nome == "Dragonair" || self.nome == "Dragonite") {
            self.type = "Dragon"
            self.strong = "Fire"
            self.weak = "Ice"
            self.color = .systemTeal

        }
        
        
        //Steel
        if(self.nome == "Onix") {
            self.type = "Steel"
            self.strong = "Normal"
            self.weak = "Fire"
            self.color = .systemGray

        }
        
        //Fairy
        if(self.nome == "Clefairy" || self.nome == "Clefable") {
            self.type = "Fairy"
            self.strong = "Fighting"
            self.weak = "Poison"
            self.color = .systemPink

        }
        
    }
    
}
