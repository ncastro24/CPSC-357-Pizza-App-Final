//
//  CartItemView.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/11/22.
//

import SwiftUI

//View for cart

struct CartItemView: View {
    @EnvironmentObject var cartstore: CartStore
    var pizza:Pizza
    var body: some View {
        HStack(spacing: 20) {
            Image(pizza.imageName)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack (alignment: .leading, spacing: 10){
                Text(pizza.name)
                    .bold()
                Text("$\(pizza.price).00")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartstore.removeFromCart(pizza: pizza)
                }
        }.padding()
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(pizza: pizzaData[2])
            .environmentObject(CartStore())
    }
}
