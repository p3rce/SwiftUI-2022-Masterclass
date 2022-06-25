//
//  StartButtonView.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-19.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool? //Set to optional because we are not setting the value, just getting and updating
    
    //MARK: - Body
    var body: some View {
        
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 5) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
            
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            
            )
        } //End Button
        .accentColor(Color.white)
        

        
    }
}

//MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
