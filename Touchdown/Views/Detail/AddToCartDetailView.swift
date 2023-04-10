//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct AddToCartDetailView: View {
	// MARK: - Properties
	@EnvironmentObject var shop: Shop
	
	// MARK: - Body
    var body: some View {
		Button {
			Constants.feedback.impactOccurred()
		} label: {
			Spacer()
			Text("add to cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			Spacer()
		}
		.padding(15)
		.background(shop.selectedProduct?.productColor() ?? Constants.sampleProduct.productColor())
		.clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
			.environmentObject(Shop())
    }
}
