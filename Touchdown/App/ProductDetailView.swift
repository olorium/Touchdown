//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct ProductDetailView: View {
	// MARK: - Properties
	@EnvironmentObject var shop: Shop
	
	// MARK: - Body
    var body: some View {
		VStack(alignment: .leading, spacing: 5) {
			NavigationBarDetailView()
				.padding(.horizontal)
				.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
			
			HeaderDetailView()
				.padding(.horizontal)
			
			TopPartDetailView()
				.padding(.horizontal)
				.zIndex(1)
			
			VStack(alignment: .center, spacing: 0) {
				RatingsSizesDetailView()
					.padding(.top, -20)
					.padding(.bottom, 10)
				
				ScrollView(.vertical, showsIndicators: false) {
					Text(shop.selectedProduct?.description ?? Constants.sampleProduct.description)
						.font(.system(.body, design: .rounded))
						.foregroundColor(.gray)
						.multilineTextAlignment(.leading)
					
					QuantityFavoriteDetailView()
						.padding(.vertical, 10)
					
					AddToCartDetailView()
						.padding(.bottom, 20)
				}
			}
			.padding(.horizontal)
			.background(
				Color.white.clipShape(CustomShape()).padding(.top, -105)
			)
		}
		.zIndex(0)
		.ignoresSafeArea(.all, edges: .all)
		.background((shop.selectedProduct?.productColor() ??  Constants.sampleProduct.productColor()).ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
			.environmentObject(Shop())
    }
}
