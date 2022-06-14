//
//  ContentView.swift
//  Restart
//
//  Created by Pierce Goulimis on 2022-06-13.
//

import SwiftUI

struct ContentView: View {
    
    //First, set up a new Onboarding key in the AppStorage (permanent storage on user's device). Contains property wrapper (AppStorage), User Defaults Key (onboarding) and the property name (isOnboardingViewActive). We will default set it to true because the first time a user opens the app, we want to show them onboarding and it will therefore be active.
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        //Create a ZStack (AKA Container) to display different views ontop of each other. if else statement to check if the onboardingview is active or not
        ZStack {
            //If statement is checking if it's true
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
