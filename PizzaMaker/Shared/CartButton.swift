//
//  CartButton.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/11/22.
//

import SwiftUI

//File for a custom cart button

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .font(.title)
                //.padding(.top, 5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButtonViewPreviews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
