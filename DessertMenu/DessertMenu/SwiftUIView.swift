//
//  SwiftUIView.swift
//  DessertMenu
//
//  Created by Felipe Marques on 05/01/24.
//

import SwiftUI

struct MealDetailsView: View {
    let meal: Meal = .sample()
    var body: some View {
        ScrollView {
            Text(meal.strMeal)
                .font(.largeTitle)
            Text(meal.strInstructions)
                .padding()

            VStack {
                ForEach(0...meal.ingredients.count-1, id: \.self) { index in
                    HStack {
                        Text(meal.ingredients[index])
                        Text(meal.measures[index])
                        Text("\(index)")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    MealDetailsView()
}
