//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-09-02.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        
        
        HStack {
            
            Button {
                
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }


            
        }//End HStack
        
        
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
