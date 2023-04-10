//
//  BrandModel.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import Foundation

struct Brand: Codable, Identifiable {
	/// Brand identifier
	let id: Int
	/// Brand image name
	let image: String
}
