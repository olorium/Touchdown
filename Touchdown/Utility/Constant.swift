//
//  Constant.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

/// Constants for the project.
@dynamicMemberLookup
struct Constants {
	// MARK: - Data
	let players: [Player] = Bundle.main.decode("player.json")
	
	// MARK: - Color
	let colorBackground = Color("ColorBackground")
	let colorGray = Color(UIColor.systemGray4)
	// MARK: - Layout
	
	// MARK: - UX
	
	// MARK: - API
	
	// MARK: - Image
	
	// MARK: - Font
	
	// MARK: - Font
	
	// MARK: - Misc
	
	/// Prevent outside construction by making the init private.
	private init() {}
	
	static subscript<T>(dynamicMember keyPath: KeyPath<Constants, T>) -> T {
		Constants()[keyPath: keyPath]
	}
}
