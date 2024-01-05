//
//  MealDetailsViewModel.swift
//  DessertMenu
//
//  Created by Felipe Marques on 05/01/24.
//

import Foundation

@MainActor
final class MealDetailsViewModel: ObservableObject {
    @Published private(set) var meal: Meal?

    func getDessertList(id: String) async throws {
        let endpoint = "https://themealdb.com/api/json/v1/1/lookup.php?i=\(id)"

        guard let url = URL(string: endpoint) else {throw URLError(.badURL) }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw URLError(.badURL)
        }

        do {
            let decoder = JSONDecoder()
            meal =  try decoder.decode(MealResponse.self, from: data).meals.first
        } catch {
            throw error
        }
    }
}
