//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-09-06.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    //MARK: - Properties
    @State private var counter: Int = 0

    //MARK: - Body
    var body: some View {
        
        HStack(alignment: .center, spacing: 6) {
            
            Button {
                
                if counter > 0 {
                    counter -= 1
                }
                
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            
            Button {
                
                if counter < 10 {
                    counter += 1
                }
                
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }



            
        }//End HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
        
    }
}

//MARK: - Preview
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
