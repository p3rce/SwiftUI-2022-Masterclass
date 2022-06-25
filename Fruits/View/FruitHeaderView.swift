//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-20.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: - Properties
    
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
        } //End ZStack
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
                
            } //End Animation
            
        } //End OnAppear
        
        
    }
}

//MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
