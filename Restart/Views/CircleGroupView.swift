//
//  CircleGroupView.swift
//  Restart
//
//  Created by Pierce Goulimis on 2022-06-13.
//

import SwiftUI

struct CircleGroupView: View {
    
    //MARK: - Properties
    
    //@State tells SwiftUI that a view is now dependant on some state (in this case: the ShapeColor and the ShapeOpacity)
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    //Since we made it private, it will not interfer with the isAnimating variable we have in OnboardingView
    @State private var isAnimating: Bool = false
    
    //MARK - Body
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
            
            
        }//End ZStack
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
        }
    }
}

//MARK: - Preview

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
