//
//  ProductModel.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-08-31.
//

import Foundation

struct Product: Codable, Identifiable {
    
    //MARK: - Properties
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    
    //MARK: - Computed Properties
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var formattedPrice: String { return "$\(price)" }
    
    
}
