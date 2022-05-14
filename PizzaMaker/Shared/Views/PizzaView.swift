//
//  PizzaView.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/13/22.
//

import SwiftUI

//View for tab 1: pizzas (any)

struct PizzaView: View {
    @StateObject private var pizzaStore : PizzaStore = PizzaStore(pizzas: pizzaData)
    var body: some View {
        NavigationView {
            List {
                ForEach (pizzaStore.pizzas) { pizza in
                    if pizza.tabID == 1 {
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

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaView()
    }
}
