//
//  Model.swift
//  MixN
//
//  Created by Kyle Lampa on 11/25/21.
//

import SwiftUI

struct Cocktails: Codable {
    let drinks: [Cocktail]
}

struct Cocktail: Codable, Hashable, Identifiable {
    let id = UUID()
    var dateModified: String? = ""
    var idDrink: String? = ""
    var strAlcoholic: String? = ""
    var strCategory: String? = ""
    var strDrink: String? = ""
    var strDrinkAlternate: String? = ""
    var strDrinkThumb: String? = ""
    var strGlass: String? = ""
    var strIBA: String? = ""
    var strImageSource: String? = ""
    var strIngredient1: String? = ""
    var strIngredient2: String? = ""
    var strIngredient3: String? = ""
    var strIngredient4: String? = ""
    var strIngredient5: String? = ""
    var strIngredient6: String? = ""
    var strIngredient7: String? = ""
    var strIngredient8: String? = ""
    var strIngredient9: String? = ""
    var strIngredient10: String? = ""
    var strIngredient11: String? = ""
    var strIngredient12: String? = ""
    var strIngredient13: String? = ""
    var strIngredient14: String? = ""
    var strIngredient15: String? = ""
    var strInstructions: String? = ""
    var strMeasure1: String? = ""
    var strMeasure2: String? = ""
    var strMeasure3: String? = ""
    var strMeasure4: String? = ""
    var strMeasure5: String? = ""
    var strMeasure6: String? = ""
    var strMeasure7: String? = ""
    var strMeasure8: String? = ""
    var strMeasure9: String? = ""
    var strMeasure10: String? = ""
    var strMeasure11: String? = ""
    var strMeasure12: String? = ""
    var strMeasure13: String? = ""
    var strMeasure14: String? = ""
    var strMeasure15: String? = ""
}

struct RandomCocktails: Codable {
    let drinks: [RandomCocktail]
}

struct RandomCocktail: Codable, Hashable, Identifiable {
    let id = UUID()
    var dateModified: String? = ""
    var idDrink: String? = ""
    var strAlcoholic: String? = ""
    var strCategory: String? = ""
    var strDrink: String? = ""
    var strDrinkAlternate: String? = ""
    var strDrinkThumb: String? = ""
    var strGlass: String? = ""
    var strIBA: String? = ""
    var strImageSource: String? = ""
    var strIngredient1: String? = ""
    var strIngredient2: String? = ""
    var strIngredient3: String? = ""
    var strIngredient4: String? = ""
    var strIngredient5: String? = ""
    var strIngredient6: String? = ""
    var strIngredient7: String? = ""
    var strIngredient8: String? = ""
    var strIngredient9: String? = ""
    var strIngredient10: String? = ""
    var strIngredient11: String? = ""
    var strIngredient12: String? = ""
    var strIngredient13: String? = ""
    var strIngredient14: String? = ""
    var strIngredient15: String? = ""
    var strInstructions: String? = ""
    var strMeasure1: String? = ""
    var strMeasure2: String? = ""
    var strMeasure3: String? = ""
    var strMeasure4: String? = ""
    var strMeasure5: String? = ""
    var strMeasure6: String? = ""
    var strMeasure7: String? = ""
    var strMeasure8: String? = ""
    var strMeasure9: String? = ""
    var strMeasure10: String? = ""
    var strMeasure11: String? = ""
    var strMeasure12: String? = ""
    var strMeasure13: String? = ""
    var strMeasure14: String? = ""
    var strMeasure15: String? = ""
}

struct Categories: Codable {
    var drinks: [Category]
}

struct Category: Codable, Identifiable, Hashable {
    let id = UUID()
    var strCategory: String? = ""
}

struct CategoryCocktails: Codable {
    var drinks: [CategoryCocktail]
}

struct CategoryCocktail: Codable, Identifiable, Hashable {
    let id = UUID()
    var idDrink: String? = ""
    var strDrink: String? = ""
    var strDrinkThumb: String? = ""
}

struct LookupCocktails: Codable {
    let drinks: [LookupCocktail]
}

struct LookupCocktail: Codable, Hashable, Identifiable {
    let id = UUID()
    var dateModified: String? = ""
    var idDrink: String? = ""
    var strAlcoholic: String? = ""
    var strCategory: String? = ""
    var strDrink: String? = ""
    var strDrinkAlternate: String? = ""
    var strDrinkThumb: String? = ""
    var strGlass: String? = ""
    var strIBA: String? = ""
    var strImageSource: String? = ""
    var strIngredient1: String? = ""
    var strIngredient2: String? = ""
    var strIngredient3: String? = ""
    var strIngredient4: String? = ""
    var strIngredient5: String? = ""
    var strIngredient6: String? = ""
    var strIngredient7: String? = ""
    var strIngredient8: String? = ""
    var strIngredient9: String? = ""
    var strIngredient10: String? = ""
    var strIngredient11: String? = ""
    var strIngredient12: String? = ""
    var strIngredient13: String? = ""
    var strIngredient14: String? = ""
    var strIngredient15: String? = ""
    var strInstructions: String? = ""
    var strMeasure1: String? = ""
    var strMeasure2: String? = ""
    var strMeasure3: String? = ""
    var strMeasure4: String? = ""
    var strMeasure5: String? = ""
    var strMeasure6: String? = ""
    var strMeasure7: String? = ""
    var strMeasure8: String? = ""
    var strMeasure9: String? = ""
    var strMeasure10: String? = ""
    var strMeasure11: String? = ""
    var strMeasure12: String? = ""
    var strMeasure13: String? = ""
    var strMeasure14: String? = ""
    var strMeasure15: String? = ""
}
