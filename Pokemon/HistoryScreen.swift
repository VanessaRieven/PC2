//
//  HistoryScreen.swift
//  Pokemon
//
//  Created by Vanessa Brioso on 26/01/2022.
//

import SwiftUI

struct HistoryScreen: View {
    @Binding var historico:[String]
        
        var body: some View {
            VStack {
                ForEach(self.historico, id: \.self){ pok in
                    Button(pok) {
                     
                    
                    }
                    .frame(width: 300, height: 50, alignment: .center)
                    .background(.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                }
            }.background(
                Image("basic")
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
        }
}
