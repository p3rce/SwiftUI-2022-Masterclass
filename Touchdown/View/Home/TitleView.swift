//
//  TitleView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-08-31.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    let title: String

    //MARK: - Body

    var body: some View {
        
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }//End HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: - Preview

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
