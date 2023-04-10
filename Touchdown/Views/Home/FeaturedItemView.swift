//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct FeaturedItemView: View {
	// MARK: - Properties
	/// Player data for the tab view.
	let player: Player
	
	// MARK: - Body
    var body: some View {
		Image(player.image)
			.resizable()
			.scaledToFit()
			.cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
		FeaturedItemView(player: Constants.players[0])
    }
}
