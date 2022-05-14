//
//  CartView.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/11/22.
//

import SwiftUI

//View file for how items will be displayed on cart

struct CartView: View {
    @EnvironmentObject var cartstore: CartStore
    var body: some View {
        ScrollView {
            if cartstore.pizzas.count > 0{
                ForEach(cartstore.pizzas, id: \.id) {
                    pizza in
                    CartItemView(pizza: pizza)
                }
                HStack {
                    Text("Total: ")
                    Spacer()
                    Text("$\(cartstore.total).00")
                        .bold()
                }
                .padding()
            }
            else {
                Text("Your cart is empty.")
                    .font(.title)
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartStore())
    }
}
