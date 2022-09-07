//
//  Constants.swift
//  Touchdown
//
//  Created by Pierce Goulimis on 2022-08-20.
//

import SwiftUI


//Collect essential data and resources for the Touchdown App

//MARK: - Data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct: Product = products[0]


//MARK: - Color

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)


//MARK: - Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


//MARK: - UX


//MARK: - API


//MARK: - IMAGE



//MARK: - FONT



//MARK: - STRING



//MARK: - MISC
