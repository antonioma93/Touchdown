//
//  FooterView.swift
//  Touchdown
//
//  Created by Massa Antonio on 27/08/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
		VStack(alignment: .center, spacing: 10) {
			Text("We offer the most cuttin edge, comfortable, lightweiight and durable footbal helmets in the market at affordable prices.")
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
			Image("logo-lineal")
				.renderingMode(.template)
				.foregroundColor(.gray)
			Text("Copyright © Massa Antonio\nAll right reserved")
				.font(.footnote)
				.fontWeight(.bold)
				.foregroundColor(.gray)
				.multilineTextAlignment(.center)
				.layoutPriority(1)
		}
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
    }
}
