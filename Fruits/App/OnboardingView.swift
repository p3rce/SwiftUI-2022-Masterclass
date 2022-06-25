//
//  OnboardingView.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-19.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    
    //MARK: - Body
    var body: some View {
        TabView {
            
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
                
            }
            
        } //End TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
