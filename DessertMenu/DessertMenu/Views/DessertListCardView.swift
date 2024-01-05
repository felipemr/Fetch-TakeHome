//
//  DessertListCardView.swift
//  DessertMenu
//
//  Created by Felipe Marques on 05/01/24.
//

import SwiftUI

struct DessertListCardView: View {

    let dessert: MealListItem

    let width: CGFloat = 180
    let height: CGFloat = 250

    var body: some View {
        ZStack {
            thumbnail
            VStack {
                Spacer()
                title
            }
        }
        .frame(width: width)
        .frame(height: height)
        .background(Color.secondary)
        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
    }

    var thumbnail: some View {
        AsyncImage(url: dessert.thumbURL) { img in
            img
                .resizable()
                .scaledToFill()
                .frame(width: width)
        } placeholder: {
            ProgressView()
        }
    }

    var title: some View {
        HStack {
            Text(dessert.name)
                .font(.system(size: 12, weight: .bold))
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(.horizontal)
        .frame(height: 50)
        .foregroundStyle(.secondary)
        .background(Color.black.opacity(0.3))
        .background(.thinMaterial)
    }
}

#Preview {
    DessertListCardView(dessert: MealListItem.sample())
}
