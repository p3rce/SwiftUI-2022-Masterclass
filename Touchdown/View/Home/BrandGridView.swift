//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-09-01.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                
                ForEach(brands) { brand in
                    
                    BrandItemView(brand: brand)
                    
                }
                
            } //End Grid
            .frame(height: 200)
            .padding(15)
            
        }//End ScrollView
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
