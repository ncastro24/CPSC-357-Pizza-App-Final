//
//  PizzaDetail.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/4/22.
//

import SwiftUI

//View file for item details

struct PizzaDetail: View {
    @EnvironmentObject var cartstore: CartStore
    var selectedPizza: Pizza
    var body: some View {
        Form {
            Section(header: Text("Item Details")) {
                Image(selectedPizza.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedPizza.name)
                    .font(.headline)
                Text(selectedPizza.description)
                
                HStack {
                    Text("Vegetarian").font(.headline)
                    //Spacer()
                    Image(systemName: selectedPizza.isVegetarian ? "checkmark.circle" : "xmark.circle")
                    Spacer()
                    Text("Gluten Free").font(.headline)
                    //Spacer()
                    Image(systemName: selectedPizza.isGlutenFree ? "checkmark.circle" : "xmark.circle")
                        .padding(.trailing,10)
                }
                HStack {
                    Text("Price: $\(selectedPizza.price).00").font(.headline)
                }
                Button {
                    cartstore.addToCart(pizza: selectedPizza)
                    print("\(CartStore().pizzas.count)")
                    
                } label: {
                    Text("Add To Cart")
                        .padding(10)
                }
            }
        }
    }
}

struct PizzaDetail_Previews: PreviewProvider {
    static var previews: some View {
        PizzaDetail(selectedPizza: pizzaData[0]).environmentObject(CartStore())
    }
}
