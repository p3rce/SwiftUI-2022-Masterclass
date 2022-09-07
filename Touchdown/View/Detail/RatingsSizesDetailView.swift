//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-09-06.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    //MARK: - Properties
    let sizes: [String] = ["XS","S","M","L","XL"]

    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            
            //Ratings
            
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                            
                        }//End Button

                        
                    }//End ForEach loop
                    
                }//End HStack
                
            }//End VStack
            
            Spacer()
            
            //Sizes
            VStack(alignment: .trailing, spacing: 3) {
                
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 8) {
                    
                    ForEach(sizes, id: \.self) { size in
                        Button {
                            
                        } label: {
                            
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                
                                )
                            
                        }//End Button

                    }//End ForEach
                    
                }//End HStack
                
            }//End VStack
            
            
            
        }//End HStack
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
