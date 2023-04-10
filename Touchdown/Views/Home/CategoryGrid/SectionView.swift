//
//  SectionView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct SectionView: View {
	// MARK: - Properties
	/// Used to change text rotation angle.
	@State var rotateClockwise: Bool
	
	// MARK: - Body
    var body: some View {
		VStack(spacing: 0) {
			Spacer()
			Text("Categories".uppercased())
				.font(.footnote)
				.fontWeight(.bold)
				.foregroundColor(.white)
				.rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
			Spacer()
		}
		.background(Constants.colorGray.cornerRadius(12))
		.frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
		SectionView(rotateClockwise: false)
    }
}
