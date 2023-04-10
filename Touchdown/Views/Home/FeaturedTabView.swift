//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct FeaturedTabView: View {
	// MARK: - Properties
	
	// MARK: - Body
    var body: some View {
		TabView {
			ForEach(Constants.players) { player in
				FeaturedItemView(player: player)
					.padding(.top, 10)
					.padding(.horizontal, 15)
			}
		}
		.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
    }
}
