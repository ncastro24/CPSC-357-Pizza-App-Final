//
//  TreatsView.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/13/22.
//

import SwiftUI

//View for tab 3: treats

struct TreatsView: View {
    @StateObject private var pizzaStore : PizzaStore = PizzaStore(pizzas: pizzaData)
    var body: some View {
        NavigationView {
            List {
                ForEach (pizzaStore.pizzas) { pizza in
                    if pizza.tabID == 3 {
                        ListCell(pizza: pizza)
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Treats")
                            .fontWeight(.heavy)
                    }
                }
        }
    }
}


struct TreatsView_Previews: PreviewProvider {
    static var previews: some View {
        TreatsView()
    }
}
