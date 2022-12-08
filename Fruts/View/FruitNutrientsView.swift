//
//  FruitNutrients.swift
//  Fruts
//
//  Created by kenjimaeda on 07/12/22.
//

import SwiftUI

struct FruitNutrientsView: View {
	//MAR: - Properties
	let fruit: FruitModel
	let nutrients = ["Energy", "Sugar", "Fat","Protein","Vitamins","Minerals"]
	
	var body: some View {
		GroupBox() {
			DisclosureGroup("Nutritional value per 100g",content:  {
				//se reclamar qeu não existe um inteiro ou constante lateral
				//adiciona o campo id
				ForEach(0..<nutrients.count,id: \.self){ it in
					Divider()
						.padding(.vertical,3)
					HStack() {
						Group {
							Image(systemName: "info.circle")
							Text(nutrients[it])
							
						}
						.foregroundColor(fruit.gradientColors[1])
						.font(Font.system(.body).bold())
						
						Spacer(minLength: 20)
						Text(fruit.nutrition[it])
							.multilineTextAlignment(.trailing)
					}
				}
				
			})
		}
	}
}

struct FruitNutrients_Previews: PreviewProvider {
	static var previews: some View {
		FruitNutrientsView(fruit: fruitsMock[0])
			.previewLayout(.fixed(width: 375, height: 480))
		
	}
}
