//
//  MealDetailsView.swift
//  DessertMenu
//
//  Created by Felipe Marques on 05/01/24.
//

import SwiftUI

struct MealDetailsView: View {

    @StateObject private var viewModel = MealDetailsViewModel()
    @State private var errorMessage = ""

    let mealID: String

    var body: some View {
        ScrollView {
            VStack {
                mealImage
                Spacer()
            }
            recipeSheet
            
            if !errorMessage.isEmpty {
                VStack {
                    Text("An error has happened, please try again")
                    Text(errorMessage)
                }
            }
        }
        .scrollIndicators(.never)
        .ignoresSafeArea()
        .task {
            do {
                try await viewModel.getDessertList(id: mealID)
            } catch {
                errorMessage = error.localizedDescription
            }
        }
    }

    var recipeSheet: some View {
        VStack {
            title
            extras
            ingredients
            instructions
            Spacer(minLength: 45)
        }
        .padding(.horizontal, 16)
        .background()
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: Color.black.opacity(0.2), radius: 8, y: -8)
        .padding(.top, -100)
    }

    var title: some View {
        HStack {
            Text(viewModel.meal?.strMeal ?? "Loading...")
                .font(.largeTitle)
                .padding(.top)
            Spacer()
        }
    }

    var mealImage: some View {
        Group {
            if let imageURL = viewModel.meal?.strMealThumb {
                AsyncImage(url:  imageURL) { img in
                    img
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ZStack {
                        Color.gray
                            .frame(height: 300)
                        ProgressView()
                    }
                }
            } else {
                Color.gray
                    .frame(height: 300)
            }
        }
    }

    var extras: some View {
        HStack {
            if let source = viewModel.meal?.strSource {
                Link(destination: source)  {
                    HStack {
                        Image(systemName: "network")
                        Text("Source")
                    }
                    .foregroundColor(.primary)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(Color.yellow.opacity(0.2))
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 90))
                }
            }

            if  let youtube = viewModel.meal?.strYoutube {
                Link(destination: youtube) {
                    HStack {
                        Image(systemName: "play.rectangle")
                        Text("YouTube")
                    }
                    .foregroundColor(.primary)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(Color.red.opacity(0.2))
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 90))
                }
            }

            Spacer()

        }
    }

    var ingredients: some View {
        Group {
            if viewModel.meal != nil {
                VStack(alignment: .leading) {
                    ForEach(0...viewModel.meal!.ingredients.count-1, id: \.self) { index in
                        HStack {
                            Text(viewModel.meal!.ingredients[index])
                            Spacer()
                            Text(viewModel.meal!.measures[index])
                        }
                    }
                }
            }
        }
        .padding()
    }

    var instructions: some View {
        Text(viewModel.meal?.strInstructions ?? "")
            .padding()
    }

}

#Preview {
    MealDetailsView(mealID: "52897")
}
