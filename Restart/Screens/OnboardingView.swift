//
//  OnboardingView.swift
//  Restart
//
//  Created by Pierce Goulimis on 2022-06-13.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - Properties
    
    //This true value will only be added to the property when the program cannot find the "onboarding" key previously set in the device's permanent storage. When the running program finds the previously created "onboarding" key, it will ignore the value set (right part after the equals sign) no matter what is there.
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    //Screen width - 80 points (40p oints on left and 40 points on right)
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    
    //Repersent offset value in horizontal direction. Btn has two states (active when dragging, idle state when inactive). That's why we init this with offset value of 0.
    @State private var buttonOffset: CGFloat = 0
    
    //A property to control the animation. If true start animation, else do not start animation
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    var body: some View {
        
        ZStack {
            
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                
                //MARK: - Header
                Spacer()
                
                VStack(spacing: 0) {
                    
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                        It's not how much we give but
                        how much love we put into giving
                        """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                    
                } //End VStack
                
                //Use ternary Operators which operates on three targets. Example: a ? b : c (a = condition, b = true, c = false)
                .opacity(isAnimating ? 1 : 0) //Change opacity
                .offset(y: isAnimating ? 0 : -40) //Slide down
                .animation(.easeOut(duration: 1), value: isAnimating) //Trigger animation. Uses Animation paramter (in this case easeOut) and Value Parameter (in this case isAnimating)
                
                
                //MARK: - Center
                
                ZStack {
                    
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1 : 0)
                        .animation(.easeOut(duration: 0.5), value: isAnimating)
                    
                } //End ZStack
                
                Spacer()
                
                //MARK: - Footer
                
                ZStack {
                   
                    //1. Static Background
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    //2. Static Call-To-Action Text
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    //3. Dymanic Width Capsule
                    
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: buttonOffset + 80) //Init offset of button is 0 so we needed to add 80
                        
                        Spacer()
                        
                    }
                    
                    //4. Draggable Circle
                    
                    HStack {
                        ZStack {
                            
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                            
                        }// End ZStack
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .offset(x: buttonOffset)
                        .gesture(
                        
                            DragGesture()
                                .onChanged({ gesture in
                                    
                                    //If dragging has been started in the right direction -> and the button offset is less than or equal to the button width minus 80 (40 points on left, 40 points on right)
                                    if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80{
                                        
                                        //We are capturing the actual drag movement's width for later use by using the variable buttonOffset
                                        buttonOffset = gesture.translation.width
                                    }
                                    
                                    
                                })// End onChanged
                                .onEnded({ _ in
                                    
                                    withAnimation(Animation.easeOut(duration: 0.4)) {
                                        
                                        //If button is dragged 50% or more, snap to right edge and show HomeScreen. Else, snap to left edge and return buttonOffset to 0.
                                        if buttonOffset > buttonWidth / 2 {
                                            buttonOffset = buttonWidth - 80
                                            isOnBoardingViewActive = false
                                        } else {
                                            buttonOffset = 0
                                        }
                                        
                                    }//End withAnimation
                                    
                                })// End onEnded
                            
                        
                        ) //End Gesture
                        
                        Spacer()
                        
                    }//End HStack
                    
                }// End ZStack
                .frame(width: buttonWidth,height: 80, alignment: .center)
                .padding()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : 40)
                .animation(.easeOut(duration: 1), value: isAnimating)
                
                
            } //End of VStack
        } //End of ZStack
        .onAppear {
            isAnimating = true
        }
    }
}


//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
