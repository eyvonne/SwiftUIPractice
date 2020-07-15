//
//  RunGame.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/15/20.
//

import Foundation

func RunGame(bet:Int) {
    // place the bet
    numCredits -= bet 10
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
