//
//  ContentView.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/8/20.
//

import SwiftUI

struct ContentView: View {
    @State private var numCredits = 1000
    @State private var displayedAssets = [[0,1,2],
                                          [3,0,0],
                                          [0,0,0]]
    @State private var winning = [[false, false, false],
                                  [false, false, false],
                                  [false, false, false]]
    @State private var bet:String = "10"
    
    var body: some View {
        
        ZStack(){
            IkeaBackground()
            
            VStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                    
                    Text("SwiftUI Slots, But Better")
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("credits: " + String(self.numCredits))
                    .padding(.all, 10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(20.0)
                
                SlotBoard(displayedAssets: $displayedAssets, winning: $winning)
                
                Button(action: RunGame, label: {
                    Text("Spin!")
                        .padding(.all, 20)
                        .padding(.horizontal, 30)
                        .background(Color.green)
                        .cornerRadius(40)
                        .font(.title)
                    
                    
                })
                
                VStack(spacing: 0.0){
                
                    Text("Place Your Bet: ").font(.headline)
                    TextField("Enter Bet Amount", text: $bet)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.all, 5)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth:100)
                        .keyboardType(.numberPad)
                    Text("Credits").font(.headline)
                }

            }
        }
    }
    
    func RunGame() {
        // place the bet
        numCredits -= Int(bet) ?? 10
        winning = [[false, false, false],
                   [false, false, false],
                   [false, false, false]]
        //randomize the symbols
        displayedAssets = displayedAssets.map{ $0.map{_ in Int.random(in: 0...3)}}
        // establish if there was a match
        if displayedAssets[0][0] == displayedAssets[0][1] && displayedAssets[0][1] == displayedAssets[0][2] {
            //payout the bet
            numCredits += (Int(bet) ?? 10) * 11
            winning[0] = [true, true, true]
        }
        
        if displayedAssets[1][0] == displayedAssets[1][1] && displayedAssets[1][1] == displayedAssets[1][2]{
            //payout the bet
            numCredits += (Int(bet) ?? 10) * 11
            winning[1] = [true, true, true]
        }
        
        if displayedAssets[2][0] == displayedAssets[2][1] && displayedAssets[2][1] == displayedAssets[2][2]{
            //payout the bet
            numCredits += (Int(bet) ?? 10) * 11
            winning[2] = [true, true, true]
        }
        
        if displayedAssets[0][0] == displayedAssets[1][1] && displayedAssets[1][1] == displayedAssets [2][2]{
            //payout the bet
            numCredits += (Int(bet) ?? 10) * 11
            winning = [[true, false, false],
                       [false, true, false],
                       [false, false, true]]
        }
        
        if displayedAssets[0][2] == displayedAssets[1][1] && displayedAssets[1][1] == displayedAssets[2][0]{
            //payout the bet
            numCredits += (Int(bet) ?? 10) * 11
            winning = [[false, false, true],
                       [false, true, false],
                       [true, false, false]]
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .rotationEffect(/*@START_MENU_TOKEN@*/.zero/*@END_MENU_TOKEN@*/)
        }
    }
}



