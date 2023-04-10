//
//  CustomShape.swift
//  Touchdown
//
//  Created by Oleksii Vasyliev on 10.04.2023.
//

import SwiftUI

struct CustomShape: Shape {
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 45, height: 45))
		return Path(path.cgPath)
	}
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
			.previewLayout(.fixed(width: 428, height: 120))
			.padding()
    }
}
