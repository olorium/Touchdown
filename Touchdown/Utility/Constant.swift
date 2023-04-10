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
	
	// MARK: - API
	
	// MARK: - Image
	
	// MARK: - Font
	
	// MARK: - Font
	
	// MARK: - Misc
}
