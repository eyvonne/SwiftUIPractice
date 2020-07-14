//
//  Background.swift
//  SwiftUiPractice
//
//  Created by Eyvonne Geordan on 7/14/20.
//

import SwiftUI

struct IkeaBackground: View {
    var body: some View {
        ZStack{
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.blue)
            Rectangle()
                .edgesIgnoringSafeArea(.all)
                .rotationEffect(Angle.init(degrees: 45.0))
                .foregroundColor(Color.yellow)
                .scaleEffect(CGSize(width: 1.5, height: 1.25), anchor:.center)
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        IkeaBackground()
    }
}
