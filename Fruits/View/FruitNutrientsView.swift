//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-20.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: - Properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - Body
    var body: some View {
        
        GroupBox() {
            
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    
//                    Divider()
//                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        } //End Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        .padding(.bottom, 5)
                        .padding(.top, 5)
                        
                        Spacer(minLength: 40)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    } //End HStack
                    
                } //End ForEach
                
            } //End DisclousureGroup
            
        } //End GroupBox
        
    }
}

//MARK: - Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
