//
//  DataHandler.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 04/12/2023.
//

import Foundation

class DataHandler {
    var categoryList: Array = Array<Category>()
    
    init() {
        categoryList.append(Category(name: "Food", imageName: "FoodImage"))
        categoryList.append(Category(name: "Vegetables", imageName: "VegatablesImage"))
        categoryList.append(Category(name: "Books", imageName: "BooksImage"))
        categoryList.append(Category(name: "Fish", imageName: "FishImage"))

    }
    
    static let shared: DataHandler = {
        return DataHandler()
    }()
    
    func getCategoryList() -> Array<Category> {
        return categoryList
    }
    
    func addCategory(name: String, imageName: String) {
        let category = Category(name: name, imageName: imageName)
        categoryList.append(category)
    }
    
    func deleteCategory(for index: Int) {
        categoryList.remove(at: index)
    }
}
