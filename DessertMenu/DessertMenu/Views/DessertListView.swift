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
    @State private var searchText = ""
    @State private var errorMessage = ""

    var body: some View {
        NavigationStack {
            ZStack {
                if !viewModel.dessertList.isEmpty {
                    desserList
                }

                if loading {
                    ProgressView()
                }

                if !errorMessage.isEmpty {
                    VStack {
                        Text("An error has happened, please try again")
                        Text(errorMessage)
                    }
                }

            }
            .navigationTitle("Desserts")
            .navigationDestination(for: MealListItem.self) { dessertItem in
                MealDetailsView(mealID: dessertItem.id)
            }
            .searchable(text: $searchText)
            .task {
                do {
                    loading = true
                    try await viewModel.getDessertList()
                    loading = false
                } catch {
                    errorMessage = error.localizedDescription
                    loading = false
                }
            }
        }
    }

    var desserList: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 180))], spacing: 20) {
                ForEach(viewModel.dessertList.filter({ item in
                    guard !searchText.isEmpty else {
                        return true
                    }
                    return item.name.localizedStandardContains(searchText)
                })) { dessert in
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
