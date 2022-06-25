//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Pierce Goulimis on 2022-06-20.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            
            HStack {
                
                Text("Sources Cited")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://www.wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
                
            } //End HStack
            .font(.footnote)
            
        } //End GroupBox
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
