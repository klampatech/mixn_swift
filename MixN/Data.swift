//
//  Data.swift
//  MixN
//
//  Created by Kyle Lampa on 11/24/21.
//

import SwiftUI

class Api: ObservableObject {
    @Published var cats = [Category]()
    @Published var drinks = [Cocktail]()
    @Published var categoryDrinks = [CategoryCocktail]()
    @Published var lookupDrink = [LookupCocktail]()
    @Published var randomDrink = [RandomCocktail]()
    @Published var searchText: String = "" {
            didSet {
                searchCocktails()
            }
        }
    
    func searchCocktails() {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/search.php?s=\(searchText)") else {
            return
        }
        if (searchText.count >= 3) {
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                guard let result = try! JSONDecoder().decode(Cocktails?.self, from: data!) else {
                    return
                }
                print(result.drinks.count)
                DispatchQueue.main.async {
                    self.drinks = result.drinks
                }
            }
            .resume()
        }
    }
    
func getCocktailsByCategory(category: String) {
    let unencodedUrl = "https://www.thecocktaildb.com/api/json/v2/9973533/filter.php?c=\(category)"
    let encodedUrl = unencodedUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        guard let url = URL(string: encodedUrl!) else {
            return
        }
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                guard let result = try! JSONDecoder().decode(Cocktails?.self, from: data!) else {
                    return
                }
                print(result.drinks)
                DispatchQueue.main.async {
                    self.drinks = result.drinks
                }
            }
            .resume()
    }
    
    func getCocktailById(drinkId: String) {
            guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=\(drinkId)") else {
                return
            }
                URLSession.shared.dataTask(with: url) { (data, _, _) in
                    guard let result = try! JSONDecoder().decode(LookupCocktails?.self, from: data!) else {
                        return
                    }
                    print(result.drinks)
                    DispatchQueue.main.async {
                        self.lookupDrink = result.drinks
                    }
                }
                .resume()
        }
    
    func getRandomDrinks() {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/randomselection.php") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let result = try! JSONDecoder().decode(Cocktails.self, from: data!)
            print(result.drinks.count)
            DispatchQueue.main.async {
                self.drinks = result.drinks
            }
        }
        .resume()
    }
    
    func getCategories() {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/list.php?c=list") else {
            return
        }
        if (cats.isEmpty) {
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                let result = try! JSONDecoder().decode(Categories.self, from: data!)
                print(result.drinks.count)
                DispatchQueue.main.async {
                    self.cats = result.drinks
                }
            }
            .resume()
        }
    }
    
    func getRandomDrink() {
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v2/9973533/random.php") else {
            return
        }
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                guard let result = try! JSONDecoder().decode(RandomCocktails?.self, from: data!) else {
                    let result = {[]}
                    return }
                print(result.drinks.count)
                DispatchQueue.main.async {
                    self.randomDrink = result.drinks
                }
            }
            .resume()
    }
}
