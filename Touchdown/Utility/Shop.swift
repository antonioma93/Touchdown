//
//  Shop.swift
//  Touchdown
//
//  Created by Massa Antonio on 30/08/21.
//

import Foundation

class Shop: ObservableObject {
	@Published var showingProduct: Bool = false
	@Published var selectedProdut: Product? = nil
}
