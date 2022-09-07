//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-08-31.
//

import SwiftUI

struct ProductItemView: View {
    
    //MARK: - Property
    let product: Product

    //MARK: - Body

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            //Photo
            
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//End ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            
            //Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                .padding(.top, 5)
            
            
            
            //Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            
            
        }//End VStack
    }
}

//MARK: - Preview

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
