//
//  PizzaViewVegetarian.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/13/22.
//

//View for tab 1: pizzas (vegetarian only)

import SwiftUI

struct PizzaViewVegetarian: View {
    @StateObject private var pizzaStore : PizzaStore = PizzaStore(pizzas: pizzaData)
    var body: some View {
        NavigationView {
            List {
                ForEach (pizzaStore.pizzas) { pizza in
                    if pizza.tabID == 1 && pizza.isVegetarian == true {
                        ListCell(pizza: pizza)
                    }

                }
                //.listRowBackground(Color.blue)
            }.navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Pizzas")
                            .fontWeight(.heavy)
                    }
                }
        }
    }
}

struct PizzaViewVegetarian_Previews: PreviewProvider {
    static var previews: some View {
        PizzaViewVegetarian()
    }
}
