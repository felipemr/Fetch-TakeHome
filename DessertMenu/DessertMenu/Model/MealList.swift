//
//  MealList.swift
//  DessertMenu
//
//  Created by Felipe Marques on 04/01/24.
//

import Foundation

struct MealList: Codable {
    let meals: [MealListItem]

    static func sample() -> Self {
        return MealList(meals: [MealListItem.sample()])
    }
}

struct MealListItem: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let thumbURL: URL?

    static func sample() -> Self {
        return MealListItem(id: "Sample 01", name: "Cake", thumbURL: URL(string: "https://www.themealdb.com/images/media/meals/ywwrsp1511720277.jpg"))
    }

    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case thumbURL = "strMealThumb"
    }
}
