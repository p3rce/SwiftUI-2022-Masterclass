//
//  SettingsView.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
    
    //Enviornment allows us
    @Environment(\.presentationMode) var presentationMode
    
    
    //MARK: - Body
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 20) {
                    Text("Hello World")
                } //End VStack
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .padding()
                
            } //End ScrollView
                        
        } //End NavigationView
    
    }
    
}

//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
