//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

struct ProductDetailView: View {
	@EnvironmentObject var shop: Shop

    var body: some View {
		VStack(alignment: .leading, spacing: 5, content: {
			//NAVBAR
			NavigationBarDetailView()
				.padding(.horizontal)
				.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
			//HEADER
			HeaderDetailView()
				.padding(.horizontal)

			//DETAIL TOP PART
			TopPartDetailView()
				.padding(.horizontal)
				.zIndex(1)

			//DETAIL BOTTOM PART
			VStack(alignment: .center, spacing: 0, content: {

				//RATINGS + SIZES
				RatingSizesDetailView()
					.padding(.top, -20)
					.padding(.bottom, 10)

				//DESCRIPTION
				ScrollView(.vertical, showsIndicators: false, content: {
					Text(shop.selectedProdut?.description ?? sampleProduct.description)
						.font(.system(.body, design: .rounded))
						.foregroundColor(.gray)
						.multilineTextAlignment(.leading)
				})
				//QUANTITY + FAVORITE
				QuantityFavoriteDetailView()
					.padding(.vertical, 10)

				//ADD TO CART
				AddToCartDetailView()
					.padding(.bottom, 20)

			})
			.padding(.horizontal)
			.background(Color.white.clipShape(CustomShape())
							.padding(.top, -105))

		})
		.zIndex(0)
		.ignoresSafeArea(.all, edges: .all)
		.background(
			Color(
				red: shop.selectedProdut?.red ?? sampleProduct.red,
				green: shop.selectedProdut?.green ?? sampleProduct.green,
				blue: shop.selectedProdut?.blue ?? sampleProduct.blue)
				.ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
			.environmentObject(Shop())
			.previewLayout(.fixed(width: 375, height: 812))
    }
}
