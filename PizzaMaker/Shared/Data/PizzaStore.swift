//
//  PizzaStore.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/4/22.
//

import SwiftUI
import Combine

class PizzaStore: ObservableObject{
    @Published var pizzas: [Pizza]
    
    init (pizzas: [Pizza] = []) {
        self.pizzas = pizzas
    }
}
