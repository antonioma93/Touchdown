//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false, content: {
			LazyHGrid(rows: gridLayout, spacing: columnSpaces, content: {
				ForEach(brand) { brands in
					BrandItemView(brand: brands)
				}
			})
			.frame(height: 200)
			.padding(15)
		})
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
    }
}
