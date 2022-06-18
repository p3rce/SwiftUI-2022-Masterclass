//
//  ContentView.swift
//  Pinch
//
//  Created by Pierce Goulimis on 2022-06-16.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    
    //Store the state of the animation that shows the magazine cover onAppear (when app opens)
    @State private var isAnimating: Bool = false
    
    //Store the imageScale (aka how zoomed in it is). My default it will be zoomed out
    @State private var imageScale: CGFloat = 1
    
    //Store where the image is. We start off at 0, but as users drag and move, we need to update this with the vector coordinates (note the CGSize width and height can be positive or negative)
    @State private var imageOffset: CGSize = CGSize(width: 0, height: 0)
    
    //MARK: - Functions
    func resetImageState() {
        
        return withAnimation(.spring()) {
            imageScale = 1
            imageOffset = CGSize(width: 0, height: 0)
        }
        
    }
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.clear
                
                //MARK: - Page Image
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0).animation(.linear(duration: 1), value: isAnimating)
                    .offset(x: imageOffset.width, y: imageOffset.height)
                    .scaleEffect(imageScale)
                
                //MARK: - Tap Gesture
                    //If the user taps on the Image 2 times
                    .onTapGesture(count: 2) {
                        
                        //If the image is at original scale, magnify it!
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            //Image is already magnified, so zoom back out!
                            
                            resetImageState()
                            
                        }
                        
                    }
                
                //MARK: - Drag Gesture
                    .gesture(
                    
                        DragGesture()
                            //When the user drags their finger on the screen
                            .onChanged({ value in
                                
                                withAnimation(.linear(duration: 1)) {
                                    
                                    imageOffset = value.translation
                                    
                                }
                                
                            })
                        
                        
                            .onEnded({ _ in
                                
                                //Image is scaled out and we need to snap it back
                                if imageScale <= 1 {
                                    
                                    resetImageState()
                                    
                                }
                                
                            })
                        
                            
                    
                    )
                
                
                
                //MARK: - Long Press Gesture
                
                
                
            } //End ZStack
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                isAnimating = true
            }
            
            //MARK: - Info Panel
            .overlay(
            
                InfoPanelView(scale: imageScale, offset: imageOffset)
                    .padding(.horizontal)
                    .padding(.top, 30)
                ,alignment: .top
            
            )
            
        } //End NavigationView
        .navigationViewStyle(.stack)
        
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
