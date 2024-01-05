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
        List(viewModel.dessertList) { dessert in
            NavigationLink(value: dessert) {
                HStack {
                    AsyncImage(url: dessert.thumbURL) { img in
                        img
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                    } placeholder: {
                        Circle()
                            .foregroundColor(.accentColor)
                    }
                    .frame(width: 25)

                    Text(dessert.name)

                }
            }
        }
    }


}

#Preview {
    DessertListView()
}
