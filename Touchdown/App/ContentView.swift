//
//  ContentView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties
	
	// MARK: - Body
    var body: some View {
		ZStack {
			VStack(spacing: 0) {
				NavigationBarView()
					.padding(.horizontal, 15)
					.padding(.bottom)
					.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
					.background(Color.white)
					.shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
				
				ScrollView(.vertical, showsIndicators: false) {
					VStack(spacing: 0) {
						FeaturedTabView()
							.frame(height: UIScreen.main.bounds.width / 1.475 )
							.padding(.vertical, 10)
						
						CategoryGridView()
						
						TitleView(title: "Helmets")
						
						LazyVGrid(columns: Constants.gridLayout, spacing: 15) {
							ForEach(Constants.product) { product in
								ProductItemView(product: product)
							}
						}
						.padding(15)
						
						TitleView(title: "Brands")
						
						BrandGridView()
						
						FooterView()
							.padding(.horizontal)
					}
				}
			}
			.background(Constants.colorBackground.ignoresSafeArea(.all, edges: .all))
		}
		.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
