//
//  ContentView.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-19.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            
            List {
                
                ForEach(fruits.shuffled()) { item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        
                        FruitRowView(fruit: item)
                            .padding(.vertical, 10)
                        
                    } //End NavigationLink
                    
                    
                }
                
            } //End List
            .navigationTitle("Fruits")
            
            
        } //End NavigationView
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        
    }
}
