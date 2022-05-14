//
//  DrinksView.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/13/22.
//

import SwiftUI

//View for tab 2: drinks

struct DrinksView: View {
    @StateObject private var pizzaStore : PizzaStore = PizzaStore(pizzas: pizzaData)
    var body: some View {
        NavigationView {
            List {
                ForEach (pizzaStore.pizzas) { pizza in
                    if pizza.tabID == 2 {
                        ListCell(pizza: pizza)
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Drinks")
                            .fontWeight(.heavy)
                    }
                }
        }
    }
}

struct DrinksView_Previews: PreviewProvider {
    static var previews: some View {
        DrinksView()
    }
}
