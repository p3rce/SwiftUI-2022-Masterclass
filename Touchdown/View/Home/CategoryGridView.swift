//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-08-28.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        
                        CategoryItemView(category: category)
                        
                    }
                }
                
                
            } //End Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            
        } //End ScrollView
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
