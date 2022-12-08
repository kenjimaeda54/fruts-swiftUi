//
//  FruitHeader.swift
//  Fruts
//
//  Created by kenjimaeda on 06/12/22.
//

import SwiftUI

struct FruitHeaderView: View {
	//MARK: - Properties
	var fruit: FruitModel
	
	var body: some View {
		ZStack {
			//zstack tanto color como linear gradinte não chamar via
			//metodo usando anotacão de ponto
			LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)

			Image(fruit.image)
				.resizable()
				.scaledToFit()
				.shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8,x:6,y: 8)
				
			
			
		}//Zstack
		.frame(height: 440)
	}
}

struct FruitHeader_Previews: PreviewProvider {
	static var previews: some View {
		FruitHeaderView(fruit: fruitsMock[1])
			.previewLayout(.fixed(width: 375, height: 440))
	}
}
