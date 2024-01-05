//
//  Meal.swift
//  DessertMenu
//
//  Created by Felipe Marques on 04/01/24.
//

import Foundation

struct Meal: Codable {
    // Meal Details
    let idMeal: String
    let strMeal: String
    let strCategory: String
    let strArea: String

    // Ingredients
    let strIngredient1, strIngredient2, strIngredient3, strIngredient4: String
    let strIngredient5, strIngredient6, strIngredient7, strIngredient8: String
    let strIngredient9, strIngredient10, strIngredient11, strIngredient12: String
    let strIngredient13, strIngredient14, strIngredient15, strIngredient16: String
    let strIngredient17, strIngredient18, strIngredient19, strIngredient20: String

    // Measures
    let strMeasure1, strMeasure2, strMeasure3, strMeasure4: String
    let strMeasure5, strMeasure6, strMeasure7, strMeasure8: String
    let strMeasure9, strMeasure10, strMeasure11, strMeasure12: String
    let strMeasure13, strMeasure14, strMeasure15, strMeasure16: String
    let strMeasure17, strMeasure18, strMeasure19, strMeasure20: String

    // Other
    let strInstructions: String
    let strMealThumb: String
    let strTags: String
    let strYoutube: String

    let strSource: String
    let strDrinkAlternate: String?
    let strImageSource: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?

    static func sample() -> Self {
        return Meal(
            idMeal: "52897",
            strMeal: "Carrot Cake",
            strCategory: "Dessert",
            strArea: "British",
            strIngredient1: "Ingredient", strIngredient2: "Ingredient", strIngredient3: "Ingredient", strIngredient4: "Ingredient",
            strIngredient5: "Ingredient", strIngredient6: "Ingredient", strIngredient7: "Ingredient", strIngredient8: "Ingredient",
            strIngredient9: "Ingredient", strIngredient10: "Ingredient", strIngredient11: "Ingredient", strIngredient12: "Ingredient",
            strIngredient13: "Ingredient", strIngredient14: "Ingredient", strIngredient15: "Ingredient", strIngredient16: "Ingredient",
            strIngredient17: "Ingredient", strIngredient18: "Ingredient", strIngredient19: "Ingredient", strIngredient20: "Ingredient",

            strMeasure1: "Measure", strMeasure2: "Measure", strMeasure3: "Measure", strMeasure4: "Measure", strMeasure5: "Measure",
            strMeasure6: "Measure", strMeasure7: "Measure", strMeasure8: "Measure", strMeasure9: "Measure", strMeasure10: "Measure",
            strMeasure11: "Measure", strMeasure12: "Measure", strMeasure13: "Measure", strMeasure14: "Measure", strMeasure15: "Measure",
            strMeasure16: "Measure", strMeasure17: "Measure", strMeasure18: "Measure", strMeasure19: "Measure", strMeasure20: "Measure",

            strInstructions: "For the carrot cake, preheat the oven to 160C/325F/Gas 3. Grease and line a 26cm/10in springform cake tin.\r\nMix all of the ingredients for the carrot cake, except the carrots and walnuts, together in a bowl until well combined. Stir in the carrots and walnuts.\r\nSpoon the mixture into the cake tin and bake for 1 hour 15 minutes, or until a skewer inserted into the middle comes out clean. Remove the cake from the oven and set aside to cool for 10 minutes, then carefully remove the cake from the tin and set aside to cool completely on a cooling rack.\r\nMeanwhile, for the icing, beat the cream cheese, caster sugar and butter together in a bowl until fluffy. Spread the icing over the top of the cake with a palette knife.",

            strMealThumb: "https://www.themealdb.com/images/media/meals/vrspxv1511722107.jpg",
            strTags: "Cake,Treat,Sweet",
            strYoutube: "https://www.youtube.com/watch?v=asjZ7iTrGKA",
            strSource: "https://www.bbc.co.uk/food/recipes/classic_carrot_cake_08513",
            strDrinkAlternate: "", strImageSource: "", strCreativeCommonsConfirmed: "", dateModified: "")
    }
}

