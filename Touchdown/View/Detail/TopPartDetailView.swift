//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

struct TopPartDetailView: View {
	@State private var isAnimating: Bool = false
	@EnvironmentObject var shop: Shop

    var body: some View {
		HStack(alignment: .center, spacing: 6, content: {
			//PRICE
			VStack(alignment: .leading, spacing:6, content: {
				Text("Price")
					.fontWeight(.semibold)
				Text(shop.selectedProdut?.formattedPrice ?? sampleProduct.formattedPrice)
					.font(.largeTitle)
					.fontWeight(.black)
					.scaleEffect(1.35, anchor: .leading)
			})
			.offset(y: isAnimating ? -50 : -75)
			Spacer()

			//PHOTO
			Image(shop.selectedProdut?.image ?? sampleProduct.image)
				.resizable()
				.scaledToFit()
				.offset(y: isAnimating ? 0 : -35)

		})
		.onAppear(perform: {
			withAnimation(.easeOut(duration: 0.74)) {
				isAnimating.toggle()
			}
		})
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
