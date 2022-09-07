//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-09-02.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properties

    //MARK: - Body

    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            //MARK: - Navigation Bar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, 8)
            
            
            //MARK: - Header
            HeaderDetailView()
                .padding(.horizontal)
            
            
            //MARK: - Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            
            //MARK: - Detail Bottom Part
            
            VStack(alignment: .center, spacing: 0) {
                
                //MARK: - Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                
                
                //MARK: - Description
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//End ScrollView
                
                
                
                //MARK: - Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                
                
                
                //MARK: - Add to Cart
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                
                Spacer()
                
            }//End VStack
            .padding(.horizontal)
            .background(Color.white
                .clipShape(CustomShape())
                .padding(.top, -105)
            
            
            )

            
        }//End VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue
                 
                 ).ignoresSafeArea(.all, edges: .all)
        
        )
        
    }
}

//MARK: - Preview Layout
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
