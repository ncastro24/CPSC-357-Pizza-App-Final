//
//  PizzaToggle.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/13/22.
//

import SwiftUI

//Handles the Vegetarian and Gluten Free toggles and changes their views.

struct PizzaToggle: View {
    @State var isVegetarian: Bool = false
    @State var isGlutenFree: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $isVegetarian) {
                Text("Vegetarian")
            }
            Toggle(isOn: $isGlutenFree) {
                Text("Gluten Free")
            }
            if isVegetarian && !isGlutenFree {
                PizzaViewVegetarian()
            }
            if !isVegetarian && isGlutenFree {
                PizzaViewGlutenFree()
            }
            if isVegetarian && isGlutenFree {
                PizzaViewVegetarianAndGlutenFree()
            }
            if !isVegetarian && !isGlutenFree {
                PizzaView()
            }
        }.padding()
    }
}

struct PizzaToggle_Previews: PreviewProvider {
    static var previews: some View {
        PizzaToggle()
    }
}
