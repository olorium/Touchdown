//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct CategoryGridView: View {
	// MARK: - Body
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: Constants.gridLayout, alignment: .center, spacing: Constants.columnSpacing) {
				Section(
					header: SectionView(rotateClockwise: false),
					footer: SectionView(rotateClockwise: true)
				) {
					ForEach(Constants.categories) { category in
						CategoryItemView(category: category)
					}
				}
			}
			.frame(height: 140)
			.padding(.horizontal, 15)
			.padding(.vertical, 10)
		}
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
    }
}
