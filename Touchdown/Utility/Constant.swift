//
//  Constant.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

/// Constants for the project.
enum Constants {
	// MARK: - Data
	static let players: [Player] = Bundle.main.decode("player.json")
	static let categories: [Category] = Bundle.main.decode("category.json")
	static let products: [Product] = Bundle.main.decode("product.json")
	static let brands: [Brand] = Bundle.main.decode("brand.json")
	static let sampleProduct = products[0]
	
	// MARK: - Color
	static let colorBackground = Color("ColorBackground")
	static let colorGray = Color(UIColor.systemGray4)
	
	// MARK: - Layout
	static let columnSpacing: CGFloat = 10
	static let rowSpacing: CGFloat = 10
	static var gridLayout: [GridItem] {
		Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
	}
	
	// MARK: - UX
	static let feedback = UIImpactFeedbackGenerator(style: .medium)
}
