//
//  ContentView.swift
//  DessertMenu
//
//  Created by Felipe Marques on 04/01/24.
//

import SwiftUI

struct DessertListView: View {

    @StateObject private var viewModel = DesserListViewModel()
    @State private var loading = false

    var body: some View {
        NavigationStack {
            ZStack {
                if !viewModel.dessertList.isEmpty {
                    desserList
                }

                if loading {
                    ProgressView()
                }
            }
            .navigationTitle("Desserts")
            .navigationDestination(for: MealListItem.self) { dessertItem in
                MealDetailsView(mealID: dessertItem.id)
            }
            .task {
                do {
                    try await viewModel.getDessertList()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }

    var desserList: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 180))], spacing: 20) {
                ForEach(viewModel.dessertList) { dessert in
                    NavigationLink(value: dessert) {
                        DessertListCardView(dessert: dessert)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }


}

#Preview {
    DessertListView()
}
