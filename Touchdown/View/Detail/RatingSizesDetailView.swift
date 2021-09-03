//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by Massa Antonio on 30/08/21.
//

import SwiftUI

struct RatingSizesDetailView: View {
	let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
		HStack(alignment: .top, spacing: 3, content: {
			//RATINGS
			VStack(alignment: .leading, spacing: 3, content: {
				Text("Ratings")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(colorGray)
				HStack(alignment: .center, spacing: 3, content: {
					ForEach(1...5, id: \.self) { item in
						Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
							Image(systemName: "star.fill")
								.frame(width: 28, height: 28, alignment: .center)
								.background(colorGray.cornerRadius(5))
								.foregroundColor(.white)
						})
					}
				})
			})

			Spacer()

			//SIZES
			VStack(alignment: .trailing, spacing: 3, content: {
				Text("Sizes")
					.font(.footnote)
					.fontWeight(.semibold)
					.foregroundColor(colorGray)
				HStack(alignment: .center, spacing: 5, content: {
					ForEach(sizes, id: \.self) { size in
						Text(size)
							.font(.footnote)
							.fontWeight(.heavy)
							.foregroundColor(colorGray)
							.frame(width: 28, height: 28, alignment: .center)
							.background(Color.white.cornerRadius(5))
							.background(RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2))
					}
				})
			})
		})
    }
}

struct RatingSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
