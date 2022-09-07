//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-09-06.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    var body: some View {
        
        Button {
            
        } label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(15)
        .background(
        
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        
        )
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
