//
//  ContentView.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/8/20.
//

import SwiftUI

struct ContentView: View {
    @State private var numCredits = 1000
    @State private var assetNames = ["ant", "hare", "tortise", "flame"]
    @State private var displayedAssets = [[0,0,0],
                                          [0,0,0],
                                          [0,0,0]]
    
    var body: some View {
        
        ZStack(){
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.blue)
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .rotationEffect(Angle.init(degrees: 45.0))
                .foregroundColor(Color.yellow)
                .frame(width: 500, height: 1000, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                    
                    Text("SwiftUI Slots, But Better")
                        .bold()
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.orange)
                    
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("credits: " + String(self.numCredits))
                    .padding(.all, 10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(20.0)
                
                HStack{
                    CardView(symbolName: assetNames[displayedAssets[0][0]])
                    CardView(symbolName: assetNames[displayedAssets[0][0]])
                    CardView(symbolName: assetNames[displayedAssets[0][0]])
                }
            }
            
            
            
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func buttonAction() {
    print("button Pressed")
}
