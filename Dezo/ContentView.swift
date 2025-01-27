//
//  ContentView.swift
//  Dezo
//
//  Created by Joash Cohen on 12/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack(){
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
                
                
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack(alignment: .center, spacing: 30.0){
                        Text("Player")
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    VStack(alignment: .center, spacing: 30.0){
                        Text("CPU")
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }.foregroundColor(.white)
               
                Spacer()
                
            }
            
        }
        
    }
    
    func deal() {
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
