//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

struct AddToCartDetailView: View {
	@EnvironmentObject var shop: Shop

    var body: some View {
		Button(action: {
			feedback.impactOccurred()
		}, label: {
			Spacer()
			Text("Add to Cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.black)
				.foregroundColor(.white)
			Spacer()
		})
		.padding(15)
		.background(
			Color(
				red: shop.selectedProdut?.red ?? sampleProduct.red,
				green: shop.selectedProdut?.green ?? sampleProduct.green,
				blue: shop.selectedProdut?.blue ?? sampleProduct.blue))
		.clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
