//
//  ListCell.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/13/22.
//

import SwiftUI

//File to display food item information in tab

struct ListCell: View {
    var pizza: Pizza
    var body: some View {
        NavigationLink(destination: PizzaDetail(selectedPizza: pizza)){
            HStack {
                Image(pizza.imageName)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(pizza.name)
                    .fontWeight(.bold)
                Spacer()
                Text("$\(pizza.price).00")
            }
        }
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(pizza: pizzaData[0])
    }
}
