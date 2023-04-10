//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct TopPartDetailView: View {
	// MARK: - Properties
	@EnvironmentObject var shop: Shop
	
	/// Sets animated state for the image.
	@State private var isAnimating = false
	
	// MARK: - Body
    var body: some View {
		HStack(alignment: .center, spacing: 6) {
			VStack(alignment: .leading, spacing: 6) {
				Text("Price")
					.fontWeight(.semibold)
				
				Text(shop.selectedProduct?.formattedPrice ??  Constants.sampleProduct.formattedPrice)
					.font(.largeTitle)
					.fontWeight(.black)
					.scaleEffect(1.35, anchor: .leading)
			}
			.offset(y: isAnimating ? -50 : -75)
			
			Spacer()
			
			Image(shop.selectedProduct?.image ?? Constants.sampleProduct.image)
				.resizable()
				.scaledToFit()
				.offset(y: isAnimating ? 0 : -35)
		}
		.onAppear {
			withAnimation(.easeOut(duration: 0.75)) {
				isAnimating.toggle()
			}
		}
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
			.environmentObject(Shop())
    }
}
