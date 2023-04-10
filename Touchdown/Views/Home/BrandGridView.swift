//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct BrandGridView: View {
	// MARK: - Body
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			LazyHGrid(rows: Constants.gridLayout, spacing: Constants.columnSpacing) {
				ForEach(Constants.brands) { brand in
					BrandItemView(brand: brand)
				}
			}
			.frame(height: 200)
			.padding(15)
		}
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
