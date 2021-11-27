//
//  DetailsView.swift
//  MixN
//
//  Created by Kyle Lampa on 11/24/21.
//

import SwiftUI

struct DetailsView: View {
    var item: Cocktail
    
    var body: some View {
            List() {
                VStack {
                    AsyncImage(url: URL(string: item.strDrinkThumb!)) { image in
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
                        Text(item.strInstructions!)
                    }
                    .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Measurements & Ingredients")
                    .font(.headline)
                    .padding(.bottom, 10)
                    .foregroundColor(.gray)
                        HStack {
                            Text(item.strMeasure1 ?? "")
                            Text(item.strIngredient1 ?? "")
                        }
                        HStack {
                            Text(item.strMeasure2 ?? "")
                            Text(item.strIngredient2 ?? "")
                        }
                        HStack {
                            Text(item.strMeasure3 ?? "")
                            Text(item.strIngredient3 ?? "")
                        }
                        HStack {
                            Text(item.strMeasure4 ?? "")
                            Text(item.strIngredient4 ?? "")
                        }
                        HStack {
                            Text(item.strMeasure5 ?? "")
                            Text(item.strIngredient5 ?? "")
                        }
                        HStack {
                            Text(item.strMeasure6 ?? "")
                            Text(item.strIngredient6 ?? "")
                        }
                        HStack {
                            Text(item.strMeasure7 ?? "")
                            Text(item.strIngredient7 ?? "")
                        }
                        HStack {
                            Text(item.strMeasure8 ?? "")
                            Text(item.strIngredient8 ?? "")
                        }
                    }
                    Spacer()
                        }
                .multilineTextAlignment(.leading)
                        .navigationTitle(item.strDrink!)
                        .navigationBarTitleDisplayMode(.inline)
            }
        }
    }

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView(item: Cocktail.example)
//    }
//}
