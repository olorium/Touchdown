//
//  ProductModel.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

/// Model describing a product
struct Product: Codable, Identifiable {
	/// Product identifier
	let id: Int
	/// Product name
	let name: String
	/// Product image name
	let image: String
	/// Product price
	let price: Int
	/// Product description
	let description: String
	/// Product color
	let color: [Double]
}

extension Product {
	/// Creates ready-to-use color for the product.
	/// - Parameter product: The product to create colors for.
	/// - Returns: Right `Color` for the product.
	func productColor() -> Color {
		Color(red: color[0], green: color[1], blue: color[2])
	}
	
	/// Formatted price for the product
	var formattedPrice: String {
		"$\(price)"
	}
}
