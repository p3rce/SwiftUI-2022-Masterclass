//
//  HomeView.swift
//  Restart
//
//  Created by Pierce Goulimis on 2022-06-13.
//

import SwiftUI

struct HomeView: View {
    
    //MARK: - Properties
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = false
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            
            //MARK: - Header
            
            Spacer()
            
            ZStack {
                
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                    Animation
                        .easeInOut(duration: 4)
                        .repeatForever(),
                        value: isAnimating
                    
                    )
            }
            
            //MARK: - Center
            
            Text("The time that leads to mastery is dependant on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            //MARK: - Footer
            
            Spacer()
            
            Button {
                withAnimation {
                    playSound(sound: "success", type: "m4a")

                    isOnBoardingViewActive = true
                }
            } label: {
                
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

            
        } //: VSTACK
        .onAppear {
            
            //We need to use the applications main thread. DispatchQue is an object that manages the execution of tasks serially or concurrently on the app's main thread or on a background thread. Since we want to delay, we use main thread. We use aynscAfter to schedule the block within the {} to run.
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                
                isAnimating = true
                
            }
            
        }
    }
}

//MARK: - Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
