//
//  ContentView.swift
//  DessertMenu
//
//  Created by Felipe Marques on 04/01/24.
//

import SwiftUI

struct DessertListView: View {

    @State var dessertList: [MealListItem] = MealList.sample().meals

    var body: some View {
        NavigationStack {
            List(dessertList) { dessert in
                NavigationLink(value: dessert) {
                    Text(dessert.name)
                }
            }
            .navigationTitle("Desserts")
            .navigationDestination(for: MealListItem.self) { dessertItem in
                Text(dessertItem.name)
            }
        }
    }
}

#Preview {
    DessertListView()
}
