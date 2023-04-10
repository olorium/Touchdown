//
//  Shop.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import Foundation

final class Shop: ObservableObject {
	/// Flag to define is product is showing
	@Published var showingProduct = false
	/// Selected product for detail screen
	@Published var selectedProduct: Product?
}
