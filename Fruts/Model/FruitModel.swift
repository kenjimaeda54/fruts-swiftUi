//
//  FruitModel.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI


struct FruitModel: Identifiable {
	let id = UUID()
	let title: String
	let headline: String
	let image: String
	let gradientColors: [Color]
	let description: String
	let nutrition: [String]
}
