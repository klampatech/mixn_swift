//
//  RandomView.swift
//  MixN
//
//  Created by Kyle Lampa on 11/24/21.
//

import SwiftUI

struct RandomView: View {
    @StateObject var apiReturn = Api()
    
    var body: some View {
        NavigationView {
            List(apiReturn.randomDrink) { obj in
                VStack {
                    AsyncImage(url: URL(string: obj.strDrinkThumb!)) { image in
                        image.resizable()
                    } placeholder: {
                        Color.gray
                    }
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.top, 10)
                    VStack(alignment: .leading) {
                        Text("Recipe")
                    .font(.headline)
                    .padding(.bottom, 10)

                    .foregroundColor(.gray)
                        Text(obj.strInstructions!)

                    }
                    .padding()
                    VStack(alignment: .leading) {
                        Text("Measurements & Ingredients")
                    .font(.headline)
                    .padding(.bottom, 10)
                    .foregroundColor(.gray)
                        HStack {
                            Text(obj.strMeasure1 ?? "")
                            Text(obj.strIngredient1 ?? "")
                        }
                        HStack {
                            Text(obj.strMeasure2 ?? "")
                            Text(obj.strIngredient2 ?? "")
                        }
                        HStack {
                            Text(obj.strMeasure3 ?? "")
                            Text(obj.strIngredient3 ?? "")
                        }
                        HStack {
                            Text(obj.strMeasure4 ?? "")
                            Text(obj.strIngredient4 ?? "")
                        }
                        HStack {
                            Text(obj.strMeasure5 ?? "")
                            Text(obj.strIngredient5 ?? "")
                        }
                        HStack {
                            Text(obj.strMeasure6 ?? "")
                            Text(obj.strIngredient6 ?? "")
                        }
                        HStack {
                            Text(obj.strMeasure7 ?? "")
                            Text(obj.strIngredient7 ?? "")
                        }
                        HStack {
                            Text(obj.strMeasure8 ?? "")
                            Text(obj.strIngredient8 ?? "")
                        }
                    }
                    Spacer()
                        }
                .multilineTextAlignment(.leading)
                        .navigationTitle(obj.strDrink!)
                        .navigationBarTitleDisplayMode(.inline)
            }
        }
        .onAppear {
            apiReturn.getRandomDrink()
        }
        .onDisappear {
            apiReturn.randomDrink.removeAll()
        }
    }
}

struct RandomView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
