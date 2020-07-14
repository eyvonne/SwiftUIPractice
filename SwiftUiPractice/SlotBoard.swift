//
//  SlotBoard.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/14/20.
//

import SwiftUI

struct SlotBoard: View {
    
    @Binding var displayedAssets:[[Int]]
    let assetNames = ["ant", "hare", "cloud.bolt.rain", "flame"]
    @Binding var winning:[[Bool]]
    
    var body: some View {
        // establish winning:
        
        VStack{
            SlotRow(cardA: assetNames[displayedAssets[0][0]], cardB: assetNames[displayedAssets[0][1]], cardC: assetNames[displayedAssets[0][2]], winning: winning[0])
            SlotRow(cardA: assetNames[displayedAssets[1][0]], cardB: assetNames[displayedAssets[1][1]], cardC: assetNames[displayedAssets[1][2]], winning: winning[1])
            SlotRow(cardA: assetNames[displayedAssets[2][0]], cardB: assetNames[displayedAssets[2][1]], cardC: assetNames[displayedAssets[2][2]], winning: winning[2])
        }
    }
}

struct SlotBoard_Previews: PreviewProvider {
    static var previews: some View {
        SlotBoard(displayedAssets: Binding.constant([[0,2,0],[0,0,0],[0,0,0]]), winning: Binding.constant([[false, false, false], [true, true, true], [true, false, true]]))
    }
}
