//
//  PageModel.swift
//  Pinch
//
//  Created by Pierce Goulimis on 2022-06-18.
//

import Foundation

//A protocol defines a blueprint of methods, properties and other requirements that suit a particular task or piece of functionality
struct Page: Identifiable {
    let id: Int //ID: Specifies the IDENTIFIED object.
    let imageName: String
    
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
