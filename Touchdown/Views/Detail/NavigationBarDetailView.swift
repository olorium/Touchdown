//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
	// MARK: - Properties
	@EnvironmentObject var shop: Shop
	
	// MARK: - Body
    var body: some View {
		HStack {
			Button {
				withAnimation(.easeIn) {
					Constants.feedback.impactOccurred()
					shop.selectedProduct = nil
					shop.showingProduct = false
				}
			} label: {
				Image(systemName: "chevron.left")
					.font(.title)
					.foregroundColor(.white)
			}
			
			Spacer()
			
			Button {
				
			} label: {
				Image(systemName: "cart")
					.font(.title)
					.foregroundColor(.white)
			}
		}
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
			.environmentObject(Shop())
    }
}
