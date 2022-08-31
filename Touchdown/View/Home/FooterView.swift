//
//  FooterView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-08-20.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("We offer the most cutting edge, comfortale, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Pierce Goulimis \n All Rights Reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        } //End VStack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
