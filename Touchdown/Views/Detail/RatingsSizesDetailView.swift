//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct RatingsSizesDetailView: View {
	// MARK: - Properties
	/// Collection of product sizes
	let sizes: [String] = ["XS", "S", "M", "L", "XL"]
	
	// MARK: - Body
    var body: some View {
		HStack(alignment: .top, spacing: 3) {
			VStack(alignment: .leading, spacing: 3) {
				Text("Ratings")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(Constants.colorGray)
				
				HStack(alignment: .center, spacing: 3) {
					ForEach(1...5, id: \.self) { item in
						Button {
							
						} label: {
							Image(systemName: "star.fill")
								.frame(width: 28, height: 28)
								.background(Constants.colorGray.cornerRadius(5))
								.foregroundColor(.white)
						}
					}
				}
			}
			
			Spacer()
			
			VStack(alignment: .trailing, spacing: 3) {
				Text("Sizes")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(Constants.colorGray)
				
				HStack(alignment: .center, spacing: 5) {
					ForEach(sizes, id: \.self) { size in
						Button {
							
						} label: {
							Text(size)
								.font(.footnote)
								.fontWeight(.heavy)
								.foregroundColor(Constants.colorGray)
								.frame(width: 28, height: 28, alignment: .center)
								.background(Color.white.cornerRadius(5))
								.background(
									RoundedRectangle(cornerRadius: 5)
										.stroke(Constants.colorGray, lineWidth: 2)
								)
						}

					}
				}
			}
		}
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
    }
}
