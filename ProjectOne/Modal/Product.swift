//
//  Product.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 09/12/2023.
//

import Foundation

class Product {
    var name: String
    var image: String
    var price: Int
    var pricePerUnit: String
    
    init(name: String, image: String, price: Int, pricePerUnit: String) {
        self.name = name
        self.image = image
        self.price = price
        self.pricePerUnit = pricePerUnit
    }
}
