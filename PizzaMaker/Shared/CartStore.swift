//
//  Technical.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/9/22.
//

import Foundation

//File for adding and deleting from cart

class CartStore : ObservableObject {
    @Published private(set) var pizzas: [Pizza] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(pizza: Pizza) {
        pizzas.append(pizza)
        total += pizza.price
    }
    
    func removeFromCart(pizza: Pizza) {
        pizzas = pizzas.filter {$0.id != pizza.id}
        //pizzas.remove(at: pizza)
        total -= pizza.price
    }
}
