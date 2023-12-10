//
//  Category.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 04/12/2023.
//

import Foundation

class Category {
    var name: String
    var imageName: String
    var products: Array = Array<Product>()
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
        self.products.append(Product(name: "Cauliflower", image: "CauliflowerImage", price: 30, pricePerUnit: "per kg"))
    }
}
