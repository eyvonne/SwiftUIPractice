//
//  SwiftUIView.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/14/20.
//

import SwiftUI

struct SlotRow: View {
    var cardA:String
    var cardB:String
    var cardC:String
    var winning:[Bool]
    var body: some View {
        HStack(alignment: .center){
            Spacer()
            CardView(symbolName: cardA, winning: winning[0])
            Spacer()
            CardView(symbolName: cardB, winning: winning[1])
            Spacer()
            CardView(symbolName: cardC, winning: winning[2])
            Spacer()
        }
    }
}

struct SlotRow_Previews: PreviewProvider {
    static var previews: some View {
        SlotRow(cardA: "ant", cardB: "hare", cardC: "ant", winning: [true, true, false])
    }
}
