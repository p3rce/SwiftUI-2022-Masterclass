//
//  ContentView.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-08-20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties

    //MARK: - Body
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 0) {
                
                //MARK: - Navigation Bar
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.keyWindow?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack(spacing: 0) {
                            
                            
                            //MARK: - Featured Items
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, -15)
                            
                            
                            //MARK: - Category Grid View
                            CategoryGridView()
                                .padding(.vertical, 10)

                            
                            
                            //MARK: - Footer
                            FooterView()
                                .padding(.horizontal)
                            
                        }//End VStack
                        
                    }//End ScrollView
                
                
                
                
            } //End VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //End ZStack
        .ignoresSafeArea(.all, edges: .top)
        
        
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


