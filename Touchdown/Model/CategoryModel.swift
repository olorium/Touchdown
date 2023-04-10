//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import Foundation

/// A model describes category
struct Category: Codable, Identifiable {
	/// Category identifier
	let id: Int
	/// Category name
	let name: String
	/// Category image name
	let image: String
}
