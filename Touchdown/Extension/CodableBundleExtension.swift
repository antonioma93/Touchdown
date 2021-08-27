//
//  CodableBundleExtension.swift
//  CodableBundleExtension
//
//  Created by Massa Antonio on 27/08/21.
//

import Foundation

extension Bundle {
	func decode<T: Codable>(_ file: String) -> T {
		//Locate json file
		guard let url = self.url(forResource: file, withExtension: nil) else {
			fatalError("Failed to locate \(file) in bundle")
		}
		//Create a property for data
		guard let data = try? Data(contentsOf: url) else {
			fatalError("Failed to load \(file) from bundle")
		}

		//Create a decode
		let decoder = JSONDecoder()

		//Create a property for the decoded data
		guard let decodeData = try? decoder.decode(T.self, from: data) else {
			fatalError("Failed to decode \(file) from bundle")
		}

		//Return th ready-yo-use data
		return decodeData
	}
}
