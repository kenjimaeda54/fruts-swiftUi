//
//  FruitDetails.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct FruitDetails: View {
	//MARK: - Properties
	var fruit: FruitModel
	
	var body: some View {
		//navigationView e importante para ter o botao de voltar
		NavigationView {
			ScrollView(.vertical,showsIndicators: false) {
				VStack(alignment: .center, spacing: 20) {
					FruitHeaderView(fruit: fruit)
					VStack(alignment: .center, spacing: 20) {
						VStack(alignment: .leading, spacing: 20) {
							Text(fruit.title)
								.font(.largeTitle)
								.foregroundColor(fruit.gradientColors[1])
								.fontWeight(.heavy)
							
							Text(fruit.headline)
								.font(.headline)
								.multilineTextAlignment(.leading)
								.fontWeight(.bold)
							FruitNutrientsView(fruit: fruit)
							
							Text("learn more about blueberry".uppercased())
								.fontWeight(.bold)
								.foregroundColor(fruit.gradientColors[1])
							
							Text(fruit.description)
								.multilineTextAlignment(.leading)
								.font(.title3)
							
							SourceLinkView()
							
						}
					}// VStack
					.padding(.horizontal,20)
					.frame(maxWidth: 640,alignment: .center)
					
					//essa linha do maxWidth e para ipad
				} // VStack
				
			}// ScrollView
			.edgesIgnoringSafeArea(.top)
		} // Navigation
		
	}
	
}

struct FruitDetails_Previews: PreviewProvider {
	static var previews: some View {
		FruitDetails(fruit: fruitsMock[1])
	}
}
