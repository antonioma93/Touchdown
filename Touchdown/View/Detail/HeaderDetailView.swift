//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

struct HeaderDetailView: View {
	@EnvironmentObject var shop: Shop

    var body: some View {
		VStack(alignment: .leading, spacing: 6, content: {
			Text("Protective Gear")
			Text(shop.selectedProdut?.name ?? sampleProduct.name)
				.font(.largeTitle)
				.fontWeight(.black)
		})
		.foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
			.background(Color.gray)
	}
}
