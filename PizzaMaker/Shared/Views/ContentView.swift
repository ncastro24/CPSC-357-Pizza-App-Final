//
//  ContentView.swift
//  Shared
//
//  Created by Nayeli Castro on 5/3/22.
//

import SwiftUI

//Main Content View for app

struct ContentView: View {
    @State private var selection = 1
    @StateObject var cartstore = CartStore()
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack(spacing: 10) {
                    HStack(spacing: 15){
                        NavigationLink{ CartView().environmentObject(cartstore)} label:{
                            CartButton(numberOfProducts: cartstore.pizzas.count)
                        }
                        Spacer()
                    }
                    .padding([.horizontal, .top])
                    Divider()
                    //CustomToggle()
                    //PizzaToggle()
                    TabView(selection: $selection) {
                        PizzaToggle().environmentObject(cartstore)
                            .tabItem {
                                Image(systemName: "1.circle")
                                Text("Pizzas")
                                    .fontWeight(.bold)
                            }.tag(1)
                        DrinksView().environmentObject(cartstore)
                            .tabItem {
                                Image(systemName: "2.circle")
                                Text("Drinks")
                            }.tag(2)
                        TreatsView().environmentObject(cartstore)
                            .tabItem {
                                Image(systemName: "3.circle")
                                Text("Treats")
                            }.tag(3)
                    }
                }
            }
        }
    }
}

struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
