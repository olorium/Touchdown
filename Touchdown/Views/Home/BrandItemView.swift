//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct BrandItemView: View {
	// MARK: - Properties
	let brand: Brand
	
	// MARK: - Body
    var body: some View {
		Image(brand.image)
			.resizable()
			.scaledToFit()
			.padding(3)
			.background(Color.white.cornerRadius(12))
			.background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
		BrandItemView(brand: Constants.brands[0])
    }
}
