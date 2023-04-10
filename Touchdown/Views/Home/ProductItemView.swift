//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct ProductItemView: View {
	// MARK: - Properties
	/// Product for this view
	let product: Product
	
	// MARK: - Body
    var body: some View {
		VStack(alignment: .leading, spacing: 6) {
			ZStack {
				Image(product.image)
					.resizable()
					.scaledToFit()
					.padding(10)
			}
			.background(product.productColor())
			.cornerRadius(12)
			
			Text(product.name)
				.font(.title3)
				.fontWeight(.black)
			
			Text(product.formattedPrice)
				.fontWeight(.semibold)
				.foregroundColor(.gray)
		}
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
		ProductItemView(product: Constants.sampleProduct)
			.previewLayout(.fixed(width: 200, height: 300))
			.padding()
			.background(Constants.colorBackground)
    }
}
