//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct HeaderDetailView: View {
	// MARK: - Properties
	@EnvironmentObject var shop: Shop
	
	// MARK: - Body
    var body: some View {
		VStack(alignment: .leading, spacing: 6) {
			Text("Protective Gear")
			
			Text(shop.selectedProduct?.name ?? Constants.sampleProduct.name)
				.font(.largeTitle)
				.fontWeight(.black)
		}
		.foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
			.environmentObject(Shop())
    }
}
