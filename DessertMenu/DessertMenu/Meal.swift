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

    var ingredients: [String] {
        var ingredients = [String]()

        if !strIngredient1.isEmpty {
            ingredients.append(strIngredient1)
        }
        if !strIngredient2.isEmpty {
            ingredients.append(strIngredient2)
        }
        if !strIngredient3.isEmpty {
            ingredients.append(strIngredient3)
        }
        if !strIngredient4.isEmpty {
            ingredients.append(strIngredient4)
        }
        if !strIngredient5.isEmpty {
            ingredients.append(strIngredient5)
        }
        if !strIngredient6.isEmpty {
            ingredients.append(strIngredient6)
        }
        if !strIngredient7.isEmpty {
            ingredients.append(strIngredient7)
        }
        if !strIngredient8.isEmpty {
            ingredients.append(strIngredient8)
        }
        if !strIngredient9.isEmpty {
            ingredients.append(strIngredient9)
        }
        if !strIngredient10.isEmpty {
            ingredients.append(strIngredient10)
        }

        if !strIngredient11.isEmpty {
            ingredients.append(strIngredient11)
        }
        if !strIngredient12.isEmpty {
            ingredients.append(strIngredient12)
        }
        if !strIngredient13.isEmpty {
            ingredients.append(strIngredient13)
        }
        if !strIngredient14.isEmpty {
            ingredients.append(strIngredient14)
        }
        if !strIngredient15.isEmpty {
            ingredients.append(strIngredient15)
        }
        if !strIngredient16.isEmpty {
            ingredients.append(strIngredient16)
        }
        if !strIngredient17.isEmpty {
            ingredients.append(strIngredient17)
        }
        if !strIngredient18.isEmpty {
            ingredients.append(strIngredient18)
        }
        if !strIngredient19.isEmpty {
            ingredients.append(strIngredient19)
        }
        if !strIngredient20.isEmpty {
            ingredients.append(strIngredient20)
        }

        return ingredients
    }

    var measures: [String] {
        var measures = [String]()

        if !strMeasure1.isEmpty {
            measures.append(strMeasure1)
        }
        if !strMeasure2.isEmpty {
            measures.append(strMeasure2)
        }
        if !strMeasure3.isEmpty {
            measures.append(strMeasure3)
        }
        if !strMeasure4.isEmpty {
            measures.append(strMeasure4)
        }
        if !strMeasure5.isEmpty {
            measures.append(strMeasure5)
        }
        if !strMeasure6.isEmpty {
            measures.append(strMeasure6)
        }
        if !strMeasure7.isEmpty {
            measures.append(strMeasure7)
        }
        if !strMeasure8.isEmpty {
            measures.append(strMeasure8)
        }
        if !strMeasure9.isEmpty {
            measures.append(strMeasure9)
        }
        if !strMeasure10.isEmpty {
            measures.append(strMeasure10)
        }

        if !strMeasure11.isEmpty {
            measures.append(strMeasure11)
        }
        if !strMeasure12.isEmpty {
            measures.append(strMeasure12)
        }
        if !strMeasure13.isEmpty {
            measures.append(strMeasure13)
        }
        if !strMeasure14.isEmpty {
            measures.append(strMeasure14)
        }
        if !strMeasure15.isEmpty {
            measures.append(strMeasure15)
        }
        if !strMeasure16.isEmpty {
            measures.append(strMeasure16)
        }
        if !strMeasure17.isEmpty {
            measures.append(strMeasure17)
        }
        if !strMeasure18.isEmpty {
            measures.append(strMeasure18)
        }
        if !strMeasure19.isEmpty {
            measures.append(strMeasure19)
        }
        if !strMeasure20.isEmpty {
            measures.append(strMeasure20)
        }

        return measures
    }

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

