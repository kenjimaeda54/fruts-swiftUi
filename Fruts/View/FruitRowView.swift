//
//  FruitRow.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct FruitRowView: View {
	//MARK: - Property
	var fruit: FruitModel
	
	var body: some View {
		HStack(spacing: 10) {
			Image(fruit.image)
				.renderingMode(.original)
				.resizable()
				.scaledToFit()
				.frame(width: 80,height: 80,alignment: .center)
				.shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.3),radius: 3,x: 2,y: 2)
				.background(LinearGradient(gradient: Gradient(colors:fruit.gradientColors), startPoint: .top, endPoint: .bottom))
				.cornerRadius(8) //padding pode afetar o cornerRadius
			
			VStack(alignment: .leading, spacing:3) {
				Text(fruit.title)
					.font(.title2)
					.fontWeight(.bold)
				
				Text(fruit.headline)
					.font(.footnote)
					.foregroundColor(Color.secondary)
				
			}
			.padding(8)
			
		}
	}
}

struct FruitRow_Previews: PreviewProvider {
	static var previews: some View {
		FruitRowView(fruit: fruitsMock[1])
			.previewLayout(.sizeThatFits)
	}
}
