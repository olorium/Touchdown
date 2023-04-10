//
//  PlayerModel.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import Foundation

/// A model describing a player slider.
struct Player: Codable, Identifiable {
	/// ID property
	let id: Int
	/// Image name
	let image: String
}
