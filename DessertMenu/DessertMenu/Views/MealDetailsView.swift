//
//  MealDetailsView.swift
//  DessertMenu
//
//  Created by Felipe Marques on 05/01/24.
//

import SwiftUI

struct MealDetailsView: View {

    @StateObject private var viewModel = MealDetailsViewModel()

    let mealID: String

    var body: some View {
        ScrollView {
            Text(viewModel.meal?.strMeal ?? "Loading...")
                .font(.largeTitle)
            Text(viewModel.meal?.strInstructions ?? "Getting Instructions")
                .padding()

            if viewModel.meal != nil {
                VStack {
                    ForEach(0...viewModel.meal!.ingredients.count-1, id: \.self) { index in
                        HStack {
                            Text(viewModel.meal!.ingredients[index])
                            Text(viewModel.meal!.measures[index])
                            Text("\(index)")
                        }
                    }
                }
            }
        }
        .padding()
        .task {
            do {
                try await viewModel.getDessertList(id: mealID)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    MealDetailsView(mealID: "52897")
}
