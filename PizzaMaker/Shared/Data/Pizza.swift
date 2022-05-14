//
//  Pizza.swift
//  PizzaMaker
//
//  Created by Nayeli Castro on 5/4/22.
//

import SwiftUI

//Pizza data that grabs from .json file

struct Pizza : Codable, Identifiable, Equatable {
    var id: String
    var name: String
    var description: String
    var isVegetarian: Bool
    var isGlutenFree: Bool
    var imageName: String
    var tabID: Int
    var price: Int
}
