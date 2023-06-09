//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
	// MARK: - Properties
	/// Product quantity
	@State private var counter = 0
	
	// MARK: - Body
    var body: some View {
		HStack(alignment: .center, spacing: 6) {
			Button {
				if counter > 0 {
					Constants.feedback.impactOccurred()
					counter -= 1
				}
			} label: {
				Image(systemName: "minus.circle")
			}
			
			Text("\(counter)")
				.fontWeight(.semibold)
				.frame(minWidth: 36)
			
			Button {
				Constants.feedback.impactOccurred()
				counter += 1
			} label: {
				Image(systemName: "plus.circle")
			}
			
			Spacer()
			
			Button {
				Constants.feedback.impactOccurred()
			} label: {
				Image(systemName: "heart.circle")
					.foregroundColor(.pink)
			}

		}
		.font(.system(.title, design: .rounded))
		.foregroundColor(.black)
		.imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
    }
}
