//
//  CardView.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/9/20.
//

import SwiftUI

struct CardView: View {
    var symbolName:String
    var winning:Bool
    var body: some View {
        
        if winning{
            Image(systemName: symbolName)
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.all, 10)
                .padding(.vertical, .infinity)
                .background(Color.green.opacity(0.6))
                .cornerRadius(20)
        }
        else
        {
            Image(systemName: symbolName)
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.all, 10)
                .padding(.vertical, .infinity)
                .background(Color.white.opacity(0.6))
                .cornerRadius(20)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbolName: "hare", winning: true)
    }
}
