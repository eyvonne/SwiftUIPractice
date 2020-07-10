//
//  CardView.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/9/20.
//

import SwiftUI

struct CardView: View {
    var symbolName:String
    
    var body: some View {
        
        
        Image(systemName: symbolName)
            .resizable(capInsets: EdgeInsets(), resizingMode: .tile)
            .frame(width: 50.0, height: 50.0)
            .padding(.all, 10)
            .background(Color.white.opacity(0.6))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbolName: "ant")
    }
}
