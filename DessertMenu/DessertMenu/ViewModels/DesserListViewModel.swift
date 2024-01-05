//
//  DesserListViewModel.swift
//  DessertMenu
//
//  Created by Felipe Marques on 05/01/24.
//

import Foundation

@MainActor
final class DesserListViewModel: ObservableObject {


    @Published private(set) var dessertList: [MealListItem] = []

    func getDessertList() async throws {
        let endpoint = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"

        guard let url = URL(string: endpoint) else {throw URLError(.badURL) }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw URLError(.badURL)
        }

        do {
            let decoder = JSONDecoder()
            dessertList =  try decoder.decode(MealList.self, from: data).meals
        } catch {
            throw error
        }
    }

}
