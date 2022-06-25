//
//  FruitsApp.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-19.
//

import SwiftUI

//@main allows a type to serve as an entry point of the execution of the program
@main
struct FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true //Default is true because first time they open the app we want to onboard them
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        } //End WindowGroup
    }
}
